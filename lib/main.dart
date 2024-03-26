import 'package:flutter/material.dart';
import 'package:foodapp/presentation/otp_page.dart/otp.dart';

void main() {
  runApp(const MyApp());
}

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  // Define your dark theme colors here
  primaryColor: const Color.fromARGB(255, 0, 0, 0),
  hintColor: const Color.fromARGB(255, 0, 0, 0),
  // Define other theme properties such as text styles, etc.
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, // Use the system's theme mode (light/dark)
      darkTheme: darkTheme,
      home: const EnterOtp(),
    );
  }
}
