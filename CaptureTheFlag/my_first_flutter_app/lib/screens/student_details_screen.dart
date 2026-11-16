import 'package:flutter/material.dart';
import 'student_list_screen.dart';

class StudentDetailsScreen extends StatefulWidget {
  final Profile student;

  const StudentDetailsScreen({
    super.key,
    required this.student,
  });

  @override
  State<StudentDetailsScreen> createState() =>
      _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {

  Future<void> _showEditDialog() async {
    final nameController =
        TextEditingController(text: widget.student.name);
    final idController =
        TextEditingController(text: widget.student.studentId);
    final courseController =
        TextEditingController(text: widget.student.courseAndSection);
    final hobbyController =
        TextEditingController(text: widget.student.hobby);
    final subjectController =
        TextEditingController(text: widget.student.favoriteSubject);


    await showDialog(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text("Edit Student Information"),

              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: "Name",
                      ),
                    ),
                    TextField(
                      controller: idController,
                      decoration: const InputDecoration(
                        labelText: "Student ID",
                      ),
                    ),
                    TextField(
                      controller: courseController,
                      decoration: const InputDecoration(
                        labelText: "Course",
                      ),
                    ),
                    TextField(
                      controller: hobbyController,
                      decoration: const InputDecoration(
                        labelText: "Hobby",
                      ),
                    ),
                    TextField(
                      controller: subjectController,
                      decoration: const InputDecoration(
                        labelText: "Favorite Subject",
                      ),
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),

              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(dialogContext);
                  },
                  child: const Text("Cancel"),
                ),

                ElevatedButton(
                  onPressed: () {
                    widget.student.name = nameController.text;
                    widget.student.studentId = idController.text;
                    widget.student.courseAndSection =
                        courseController.text;  
                    widget.student.hobby = hobbyController.text;
                    widget.student.favoriteSubject =
                        subjectController.text;

                    Navigator.pop(dialogContext);
                  },
                  child: const Text("Save"),
                ),
              ],
            );
          },
        );
      },
    );

    nameController.dispose();
    idController.dispose();
    courseController.dispose();
    hobbyController.dispose();
    subjectController.dispose();

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final student = widget.student;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(student.picture),
              ),
            ),

            const SizedBox(height: 20),

            Text("Name: ${student.name}"),
            Text("Student ID: ${student.studentId}"),
            Text("Course: ${student.courseAndSection}"),
            Text("Age: ${student.age}"),
            Text("Hobby: ${student.hobby}"),
            Text("Height: ${student.height}"),
            Text("Favorite Subject: ${student.favoriteSubject}"),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: _showEditDialog,
              icon: const Icon(Icons.edit),
              label: const Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}
