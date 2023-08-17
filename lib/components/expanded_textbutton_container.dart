import 'package:calculator/calculator_library.dart';

class ExpandedTextButtonContainer extends StatelessWidget {
  final Function() onButtonPressed;
  Color backgroundColor;
  String labelButton;
  Color textColor;
  double fontSize;

  ExpandedTextButtonContainer({
    super.key,
    required this.onButtonPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.labelButton,
    this.fontSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: SizedBox.expand(
          child: TextButton(
            onPressed: onButtonPressed,
            child: Text(
              labelButton,
              style: GoogleFonts.lato(
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
