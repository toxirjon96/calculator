import 'package:calculator/calculator_library.dart';
import 'package:calculator/components/expanded_textbutton_container.dart';
import 'package:flutter/cupertino.dart';

class ExpandedBodyContainer extends StatelessWidget {
  final Function(String operation, [String source]) doOperation;
  Color backgroundColor;
  Color textColor;
  Color iconBackgroundColor;
  Color iconColor;
  final int flex;

  ExpandedBodyContainer({
    super.key,
    required this.doOperation,
    required this.backgroundColor,
    required this.textColor,
    required this.iconBackgroundColor,
    required this.iconColor,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: backgroundColor,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("clear");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "AC",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("remove");
                    },
                    backgroundColor: backgroundColor,
                    icon: Icons.backspace_outlined,
                    iconColor: textColor,
                    margin: const EdgeInsets.all(20),
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("percent");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "%",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("divide");
                    },
                    backgroundColor: backgroundColor,
                    iconBackgroundColor: iconBackgroundColor,
                    icon: CupertinoIcons.divide,
                    iconColor: iconColor,
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "7");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "7",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "8");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "8",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "9");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "9",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("multiply");
                    },
                    backgroundColor: backgroundColor,
                    iconBackgroundColor: iconBackgroundColor,
                    icon: CupertinoIcons.multiply,
                    iconColor: iconColor,
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "4");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "4",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "5");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "5",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "6");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "6",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("minus");
                    },
                    backgroundColor: backgroundColor,
                    iconBackgroundColor: iconBackgroundColor,
                    icon: CupertinoIcons.minus,
                    iconColor: iconColor,
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "1");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "1",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "2");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "2",
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "3");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "3",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("add");
                    },
                    backgroundColor: backgroundColor,
                    iconBackgroundColor: iconBackgroundColor,
                    icon: CupertinoIcons.plus,
                    iconColor: iconColor,
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("rotate");
                    },
                    backgroundColor: backgroundColor,
                    icon: Icons.screen_rotation_alt_outlined,
                    iconColor: textColor,
                    margin: const EdgeInsets.all(20),
                  ),
                  ExpandedTextButtonContainer(
                    onButtonPressed: () {
                      doOperation("number", "0");
                    },
                    backgroundColor: backgroundColor,
                    textColor: textColor,
                    labelButton: "0",
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("dot");
                    },
                    backgroundColor: backgroundColor,
                    icon: Icons.rectangle,
                    iconSize: 15,
                    iconColor: textColor,
                    margin: const EdgeInsets.all(20),
                  ),
                  ExpandedIconButtonContainer(
                    onButtonPressed: () {
                      doOperation("equal");
                    },
                    backgroundColor: backgroundColor,
                    iconBackgroundColor: const Color(0xFFFF6531),
                    icon: CupertinoIcons.equal,
                    iconColor: textColor,
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
