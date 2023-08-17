import 'package:calculator/calculator_library.dart';

class CalculatorMainUI extends StatefulWidget {
  final CalculatorRepository repository;

  const CalculatorMainUI({
    super.key,
    required this.repository,
  });

  @override
  State<StatefulWidget> createState() => _CalculatorMainUIState();
}

class _CalculatorMainUIState extends State<CalculatorMainUI> {
  Color? textColor;
  Color? screenBackgroundColor;
  Color? backgroundColor;
  Color? iconColor;
  Color iconBackgroundColor = const Color(0xFFE5E5E5);
  bool lightMode = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (lightMode) {
      textColor = Colors.black;
      screenBackgroundColor = Colors.white;
      backgroundColor = const Color(0xFFF4F4F4);
      iconColor = textColor;
    } else {
      textColor = Colors.white;
      screenBackgroundColor = const Color(0xFF36474F);
      backgroundColor = const Color(0xFF18212A);
      iconColor = Colors.black;
    }
    void doOperation(String operation, [String source = ""]) {
      setState(() {
        widget.repository.doOperation(operation, source);
      });
    }

    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: screenBackgroundColor,
          actions: [
            Switch(
              activeColor: textColor,
              value: lightMode,
              thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
              onChanged: (bool value) {
                setState(() {
                  lightMode = value;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 30,
                color: textColor,
              ),
            ),
          ],
          title: Text(
            "Calculator",
            style: GoogleFonts.lato(
              color: textColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            ExpandedScreenContainer(
              countingText: widget.repository.operation,
              result: widget.repository.result,
              screenWidth: screenWidth,
              textColor: textColor!,
              screenBackgroundColor: screenBackgroundColor!,
            ),
            ExpandedBodyContainer(
              doOperation: doOperation,
              flex: 2,
              backgroundColor: backgroundColor!,
              textColor: textColor!,
              iconBackgroundColor: iconBackgroundColor,
              iconColor: iconColor!,
            ),
          ],
        ),
      ),
    );
  }
}
