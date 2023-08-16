import 'package:calculator/calculator_library.dart';
import 'package:flutter/cupertino.dart';

class CalculatorMainUI extends StatefulWidget {
  const CalculatorMainUI({super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorMainUIState();
}

class _CalculatorMainUIState extends State<CalculatorMainUI> {
  Color? textColor;
  Color? screenBackgroundColor;
  Color? backgroundColor;
  Color? iconColor;
  Color iconBackgroundColor = const Color(0xFFE5E5E5);
  String countingText = "10x4";
  String result = "40";
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
            Expanded(
              child: Container(
                color: screenBackgroundColor,
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        countingText,
                        style: GoogleFonts.lato(
                          color: textColor,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        result,
                        style: GoogleFonts.lato(
                          color: textColor,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Divider(
                        thickness: 5,
                        indent: (screenWidth - 80) / 2,
                        endIndent: (screenWidth - 80) / 2,
                        color: textColor!.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: backgroundColor,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "AC",
                                    style: GoogleFonts.lato(
                                      color: textColor,
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.backspace_outlined,
                                    color: textColor,
                                    size: 30,
                                  ),
                                  label: const Text(""),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    "%",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: iconBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: SizedBox.expand(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.plus,
                                      color: iconColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "7",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "8",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "9",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: iconBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: SizedBox.expand(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.multiply,
                                      color: iconColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "4",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "5",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "6",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: iconBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: SizedBox.expand(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.minus,
                                      color: iconColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "1",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "2",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "3",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: iconBackgroundColor,
                                  shape: BoxShape.circle,
                                ),
                                child: SizedBox.expand(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.plus,
                                      color: iconColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton.icon(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.screen_rotation_alt_outlined,
                                    color: textColor,
                                    size: 30,
                                  ),
                                  label: const Text(""),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "0",
                                    style: GoogleFonts.lato(
                                        color: textColor, fontSize: 30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: SizedBox.expand(
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.rectangle,
                                    color: textColor,
                                    size: 15,
                                  ),
                                  label: const Text(""),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: backgroundColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFF6531),
                                  shape: BoxShape.circle,
                                ),
                                child: SizedBox.expand(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.equal,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}