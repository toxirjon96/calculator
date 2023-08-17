import 'package:calculator/calculator_library.dart';

class ExpandedScreenContainer extends StatelessWidget {
  String countingText;
  String result;
  final double screenWidth;
  Color textColor;
  Color screenBackgroundColor;
  final int flex;

  ExpandedScreenContainer({
    super.key,
    required this.countingText,
    required this.result,
    required this.screenWidth,
    required this.textColor,
    required this.screenBackgroundColor,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: screenBackgroundColor,
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    countingText,
                    style: GoogleFonts.lato(
                      color: textColor,
                      fontSize: 40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: GoogleFonts.lato(
                      color: textColor,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
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
    );
  }
}
