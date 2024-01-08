//  //
//  Import LIBRARIES
//  Import FILES
import '../model/student.dart';
//  PARTS
//  PROVIDERS

//

class StudentState {
  final List<Student> lstStudents;
  final bool isLoading;

  StudentState({required this.lstStudents, required this.isLoading});

  //  Factory
  factory StudentState.initial() {
    return StudentState(lstStudents: [], isLoading: false);
  }

  // Copy with
  StudentState copyWith({Student? student, bool? isLoading}) {
    return StudentState(
        lstStudents: student != null ? [...lstStudents, student] : lstStudents,
        isLoading: isLoading ?? this.isLoading);
  }
}
