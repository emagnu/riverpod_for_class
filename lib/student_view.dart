//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_for_class/model/student.dart';
import 'package:riverpod_for_class/state/student_state.dart';
//  Import FILES
import 'model/student_view_notifier.dart';
//  PARTS
//  PROVIDERS

//

//  //
class StudentView extends ConsumerStatefulWidget {
  const StudentView({super.key});

  @override
  // _StudentViewState createState() => _StudentViewState();
  ConsumerState<ConsumerStatefulWidget> createState() => _StudentViewState();
}

class _StudentViewState extends ConsumerState<StudentView> {
  final _gap = const SizedBox(height: 8.0);
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final studentState = ref.watch(studentViewNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student View'),
      ),
      // body: const Center(
      //   child: Text(
      //     'Student View',
      //     style: TextStyle(fontSize: 50),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your firstname',
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your lastname',
              ),
            ),
            _gap,
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Student student = Student(
                    fname: _fnameController.text,
                    lname: _lnameController.text,
                  );
                  ref
                      .read(studentViewNotifierProvider.notifier)
                      .addStudent(student);
                },
                child: const Text('Add Student'),
              ),
            ),
            _gap,
            _gap,
            studentState.isLoading
                ? const CircularProgressIndicator()
                : studentState.lstStudents.isEmpty
                    ? const Text('No data')
                    : Expanded(
                        child: ListView.builder(
                          itemCount: studentState.lstStudents.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                                  Text(studentState.lstStudents[index].fname),
                              subtitle:
                                  Text(studentState.lstStudents[index].lname),
                            );
                          },
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}




















// class StudentView extends ConsumerStatefulWidget {
//   const StudentView({super.key});

//   @override
//   ConsumerState<StudentView> createState() => _StudentViewState();
// }

// class _StudentViewState extends ConsumerState<StudentView> {
//   final _gap = const SizedBox(height: 8.0);
//   final _fnameController = TextEditingController();
//   final _lnameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final studentState = ref.watch(studentViewNotifierProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Student View'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: <Widget>[
//             TextFormField(
//               controller: _fnameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter your first name',
//               ),
//             ),
//             _gap,
//             TextFormField(
//               controller: _lnameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter your last name',
//               ),
//             ),
//             _gap,
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                   onPressed: () {
//                     Student student = Student(
//                       fname: _fnameController.text,
//                       lname: _lnameController.text,
//                     );
//                     ref.read(studentViewNotifierProvider);
//                   },
//                   child: const Text('Add Student')),
//             ),
//             _gap,
//             studentState.isLoading
//                 ? const CircularProgressIndicator()
//                 // : const Text('No Data'),
//                 : studentState.lstStudents.isEmpty
//                     ? const Text('No Data')
//                     :
//                     // Show list view
//                     Expanded(
//                         child: ListView.builder(
//                           itemCount: studentState.lstStudents.length,
//                           itemBuilder: (context, index) {
//                             final student = studentState.lstStudents[index];
//                             return ListTile(
//                               title: Text(student.fname),
//                               subtitle: Text(student.lname),
//                             );
//                           },
//                         ),
//                       ),
//           ],
//         ),
//       ),
//     );
//   }
// }
