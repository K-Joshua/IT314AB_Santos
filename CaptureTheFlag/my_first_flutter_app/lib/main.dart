import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my 2nd Flutter Design MWHEHEHHE',
      home: const Profiles(),
    );
  }
}

class Profile {
  final String? name;
  final String? courseAndSection;
  final int? age;
  final String? hobby;
  final double? height;
  final bool? isStudent;
  final int color;
  final String picture;

  const Profile(
      { required this.name,  this.courseAndSection,  this.age,  this.hobby, required this.height, required this.isStudent, required this.color,required this.picture,
      });
}

// Imma create some instance for the class since the Class seperation of profile is bad
const Profile profileA = Profile(
  name: 'Name: Carl Joshua Santos',
  hobby: 'Hobby: Sleeping',
  height: 5.8399,
  isStudent: true,
  color: 0xFF1E3A5F,
  picture: "assets/shh.jpg",
);

const Profile profileB = Profile(
  name: 'Name: Anthony Josh Moreno',
  courseAndSection: 'Course And Section: BSIT-3',
  age: 300,
  height: 5.4,
  isStudent: true,
  color: 0xFF155E63,
  picture: "assets/tonikss.jpg",
);

const Profile profileC = Profile(
  name: 'Name: Armanes Christian Artajo',
  hobby: 'Hobby: Playing Hearts',
  height: 5.8,
  isStudent: true,
  color: 0xFF245B45,
  picture: "assets/manes.jpg",
);

const Profile profileD = Profile(
  name: 'Name: Krylle Jane Racaza',
  courseAndSection: 'Course And Section: BSIT-3C',
  hobby: 'Hobby: Sleeping',
  height: 5.2,
  isStudent: true,
  color: 0xFF7A263A,
  picture: "assets/karil.jpg",
);

const Profile profileE = Profile(
  name: 'Name: Angeline Ebarola',
  courseAndSection: 'Course And Section: BCE-3',
  age: 20,
  hobby: 'Hobby: Sleeping',
  height: 5.5,
  isStudent: true,
  color: 0xFF4A2C6D,
  picture: "assets/priiHAHAHAHA.jpg",
);

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  Widget profilesOfEachUser(Profile profile)
  {
    return SizedBox(
      width: 350,
      height: 400,
      child: Card(

        color: Color(profile.color),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(profile.picture),
              ),
              Text(profile.name ?? "Name Unknown",
                  style: const TextStyle(
                      color : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)
              ),
              Text(profile.courseAndSection ?? "Not Provided",style: TextStyle(color: Colors.white)),
              Text(profile.age?.toString() ?? "Not Provided",style: TextStyle(color: Colors.white)),
              Text(profile.hobby ?? "Not Provided",style: TextStyle(color: Colors.white)),
            ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Five Profiles',
        home: Scaffold(
            backgroundColor: const Color(0xFFFFF8E7),
            appBar: AppBar(
              title: const Text("Doggie Profiles"),
              backgroundColor: Colors.amber,
              centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Column(
                    children: [
                      profilesOfEachUser(profileA),
                      profilesOfEachUser(profileB),
                      profilesOfEachUser(profileC),
                      profilesOfEachUser(profileD),
                      profilesOfEachUser(profileE),
                    ]
                )
            )
        )
    );
  }
}