//  //
//  Import LIBRARIES
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../state/student_state.dart';
import 'student.dart';

//  PARTS
//  PROVIDERS
final studentViewNotifierProvider =
    NotifierProvider<StudentViewNotifier, StudentState>(
        StudentViewNotifier.new);
//

class StudentViewNotifier extends Notifier<StudentState> {
  @override
  build() {
    // return StudentState(lstStudents: [], isLoading: false);
    return StudentState.initial();
  }

  void addStudent(Student student) async {
    // state = state.copyWith(student: student);
    state = state.copyWith(isLoading: true);
    //  Wait for 2 seconds and update the student list
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(isLoading: false, student: student);
  }
}
