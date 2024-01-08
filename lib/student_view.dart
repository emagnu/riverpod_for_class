//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS

//

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  _StudentViewState createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student View'),
      ),
      body: const Center(
        child: Text(
          'Student View',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
