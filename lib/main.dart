import 'package:flutter/material.dart';
import 'screens/user_input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromARGB(255, 28, 28, 31)),
        primaryColor: const Color.fromARGB(255, 29, 29, 31),
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 27, 29),
      ),
      home: const InputPage(),
    );
  }
}
