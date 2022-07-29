import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/counter_screen.dart';

void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey
    ),
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}
