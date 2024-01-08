//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'student_view.dart';
//  PARTS
//  PROVIDERS

//

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Notifier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: const StudentView(),
    );
  }
}
