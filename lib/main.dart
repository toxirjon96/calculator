import 'package:calculator/calculator_library.dart';

void main() {
  runApp(
    CalculatorMainUI(
      repository: CalculatorService(),
    ),
  );
}
