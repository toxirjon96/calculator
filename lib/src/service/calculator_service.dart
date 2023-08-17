import 'package:calculator/calculator_library.dart';

class CalculatorService implements CalculatorRepository {
  String _operation = "";
  String _result = "";

  @override
  String get operation => _operation;

  @override
  String get result => _result;

  @override
  void doOperation(String operation, [String source = ""]) {
    _result = "";
    switch (operation.trim().toLowerCase()) {
      case 'remove':
        _removeElement();
      case 'multiply':
        _operator('*');
      case 'divide':
        _operator('/');
      case 'add':
        _operator('+');
      case 'minus':
        _operator('-');
      case 'clear':
        _operation = '';
      case 'dot':
        _dot();
      case 'equal':
        _calculate();
      case 'number':
        _number(source);
    }
  }

  void _removeElement() {
    if (_operation.isNotEmpty) {
      _operation = _operation.substring(0, _operation.length - 1);
    }
  }

  void _operator(String operator) {
    if (_operation.isEmpty) {
      _operation += "0$operator";
    } else {
      if (_operation[_operation.length - 1] != '*' &&
          _operation[_operation.length - 1] != '-' &&
          _operation[_operation.length - 1] != '+' &&
          _operation[_operation.length - 1] != '/') {
        if (_operation[_operation.length - 1] == '.') {
          _operation += "0$operator";
        } else {
          _operation += operator;
        }
      }
    }
  }

  void _dot() {
    if (_operation.isEmpty ||
        _operation[_operation.length - 1] == '*' ||
        _operation[_operation.length - 1] == '-' ||
        _operation[_operation.length - 1] == '+' ||
        _operation[_operation.length - 1] == '/') {
      _operation += "0.";
    } else {
      if (!_operation.substring(_operatorMaxIndex()).contains(".")) {
        _operation += ".";
      }
    }
  }

  void _number(String source) {
    if (_operation.isNotEmpty &&
        source.trim().toLowerCase() == "0" &&
        (_operation[_operation.length - 1] == '*' ||
            _operation[_operation.length - 1] == '-' ||
            _operation[_operation.length - 1] == '+' ||
            _operation[_operation.length - 1] == '/')) {
      _operation += "0";
    } else {
      Set<String> numSet =
          _operation.substring(_operatorMaxIndex()).split('').toSet();
      if (numSet.length == 1 && numSet.first == "0") {
        _operation += ".$source";
      } else {
        _operation += source;
      }
    }
  }

  int _operatorMaxIndex() {
    int max = _operation.lastIndexOf("+");
    int index = _operation.lastIndexOf("-");
    if (max < index) {
      max = index;
    }
    index = _operation.lastIndexOf("*");
    if (max < index) {
      max = index;
    }
    index = _operation.lastIndexOf("/");
    if (max < index) {
      max = index;
    }
    return max + 1;
  }

  void _calculate() {
    if (_operation[_operation.length - 1] == '*' ||
        _operation[_operation.length - 1] == '-' ||
        _operation[_operation.length - 1] == '+' ||
        _operation[_operation.length - 1] == '/') {
      _operation = _operation.substring(0, _operation.length - 1);
    }

    List<double> numbers = [];
    List<String> operations = [];
    String temp = "";
    for (int i = 0; i < _operation.length; i++) {
      if (_operation[i] == '*' ||
          _operation[i] == '-' ||
          _operation[i] == '+' ||
          _operation[i] == '/') {
        try {
          numbers.add(double.parse(temp));
        } catch (e) {
          _result = "Number parsing error!";
        }
        operations.add(_operation[i].trim());
        temp = "";
      } else {
        temp += _operation[i].trim();
      }
    }

    if (temp.isNotEmpty) {
      try {
        numbers.add(double.parse(temp));
      } catch (e) {
        _result = "Number parsing error!";
      }
      temp = "";
    }
    try {
      double result = _makeCalculation(numbers, operations);
      _result = "$result";
    } on DividingZeroException catch (e) {
      _result = e.message;
    }
  }

  double _makeCalculation(List<double> numbers, List<String> operations) {
    try {
      _operationHelper(numbers, operations, "/");
      _operationHelper(numbers, operations, "*");
      double first = numbers.first;

      for (int i = 1; i < numbers.length; i++) {
        if (operations[i - 1] == "-") {
          first -= numbers[i];
        } else if (operations[i - 1] == "+") {
          first += numbers[i];
        }
      }
      return first;
    } on DividingZeroException {
      rethrow;
    }
  }

  void _operationHelper(
      List<double> numbers, List<String> operations, String operator) {
    int indexOf = -1;
    do {
      indexOf = operations.indexOf(operator, 0);
      if (indexOf != -1) {
        if (operator == "*") {
          numbers[indexOf] *= numbers[indexOf + 1];
        } else if (operator == "/") {
          if (numbers[indexOf + 1] == 0.0) {
            throw const DividingZeroException(
                "Invalid operation. Number can't be divide zero!");
          }
          numbers[indexOf] /= numbers[indexOf + 1];
        }
        numbers.removeAt(indexOf + 1);
        operations.removeAt(indexOf);
      }
    } while (indexOf != -1);
  }

  String _changeOperation() {
    return _operation.replaceAll("/", "\u{63016}").replaceAll("*", "\u{63262}");
  }
}
