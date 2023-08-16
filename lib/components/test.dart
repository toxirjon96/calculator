import 'package:calculator/calculator_library.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Icon(
            IconData(
              129481,
              matchTextDirection: true,
            ),
            textDirection: TextDirection.ltr,
            color: Colors.indigoAccent,
            size: 84,
          ),
        ),
      ),
    );
  }
}
