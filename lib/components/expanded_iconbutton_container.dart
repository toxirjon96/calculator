import 'package:calculator/calculator_library.dart';

class ExpandedIconButtonContainer extends StatelessWidget {
  Color backgroundColor;
  Color? iconBackgroundColor;
  IconData icon;
  Color iconColor;
  double iconSize;
  EdgeInsetsGeometry margin;
  final Function() onButtonPressed;

  ExpandedIconButtonContainer({
    super.key,
    required this.onButtonPressed,
    required this.backgroundColor,
    required this.icon,
    required this.iconColor,
    required this.margin,
    this.iconBackgroundColor,
    this.iconSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Container(
          margin: margin,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: iconBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: SizedBox.expand(
            child: IconButton(
              onPressed: onButtonPressed,
              icon: Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
