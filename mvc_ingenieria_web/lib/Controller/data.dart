import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mvc_ingenieria_web/Models/students.dart';

class Data {
  List<Student> students = [];
  CollectionReference student =
      FirebaseFirestore.instance.collection('students');
  getData() {
    student.get().then((QuerySnapshot querySnapchot) {
      querySnapchot.docs.forEach((doc) {
        students.add(new Student(doc['name'], doc['lastname'], doc['id'],
            doc['number'], doc['age']));
      });
    });

    return students;
  }
}
