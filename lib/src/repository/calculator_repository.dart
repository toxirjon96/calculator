abstract interface class CalculatorRepository{
  void doOperation(String operation, [String source = ""]);

  String get operation;

  String get result;
}