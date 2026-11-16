
import 'package:flutter/material.dart';

import 'screens/student_list_screen.dart';
import 'screens/student_details_screen.dart';
import 'screens/add_student_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Directory',

      initialRoute: '/student-list',

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/student-list':
            return MaterialPageRoute(
              builder: (context) => const Profiles(),
              settings: settings,
            );

          case '/student-details':
            final student = settings.arguments as Profile;

            return MaterialPageRoute(
              builder: (context) => StudentDetailsScreen(
                student: student,
              ),
              settings: settings,
            );

          case '/add-student':
            return MaterialPageRoute(
              builder: (context) => const AddStudentScreen(),
              settings: settings,
            );

          default:
            return null;
        }
      },
    );
  }
}
