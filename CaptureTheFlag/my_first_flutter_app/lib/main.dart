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
  String? name;
  String? courseAndSection;
  int? age;
  String? hobby;
  double? height;
  bool? isStudent;
  int color;
  String picture;
  String? studentId;
  String? email;
  String? favoriteSubject;
  Profile(
      {  this.name,  this.courseAndSection,  this.age,  this.hobby, required this.height, required this.isStudent, required this.color,required this.picture,    this.studentId,
        this.email,
        this.favoriteSubject,
      });
}

List<Profile> profiles = [
  Profile(
    name: 'Name: Carl Joshua Santos',
    hobby: 'Hobby: Sleeping',
    height: 5.8399,
    isStudent: true,
    color: 0xFF1E3A5F,
    picture: "assets/shh.jpg",
    studentId: '2026-0001',
    email: 'carl@puti.com',
    favoriteSubject: 'Astronomy',
  ),

  Profile(
    name: 'Name: Anthony Josh Moreno',
    courseAndSection: 'Course And Section: BSIT-3',
    age: 300,
    height: 5.4,
    isStudent: true,
    color: 0xFF155E63,
    picture: "assets/tonikss.jpg",
    studentId: '2026-0002',
    email: 'anthony@example.com',
    favoriteSubject: 'Dismissal',
  ),

  Profile(
    name: 'Name: Armanes Christian Artajo',
    hobby: 'Hobby: Playing Hearts',
    height: 5.8,
    isStudent: true,
    color: 0xFF245B45,
    picture: "assets/manes.jpg",
    studentId: '2026-0003',
    email: 'armanes@puti.com',
    favoriteSubject: 'Recess',
  ),

  Profile(
    name: 'Name: Krylle Jane Racaza',
    courseAndSection: 'Course And Section: BSIT-3C',
    hobby: 'Hobby: Sleeping',
    height: 5.2,
    isStudent: true,
    color: 0xFF7A263A,
    picture: "assets/karil.jpg",
    studentId: '2026-0004',
    email: 'racaza@puti.com',
    favoriteSubject: 'Break',
  ),

  Profile(
    name: 'Name: Angeline Ebarola',
    courseAndSection: 'Course And Section: BCE-3',
    age: 20,
    hobby: 'Hobby: Sleeping',
    height: 5.5,
    isStudent: true,
    color: 0xFF4A2C6D,
    picture: "assets/priiHAHAHAHA.jpg",
    studentId: '2026-0005',
    email: 'Ebarola@puti.com',
    favoriteSubject: 'Badminton',
  ),

  Profile(
    name: 'Name: Keith Lopez',
    courseAndSection: 'Course And Section: BSIT-3',
    age: 20,
    hobby: 'Hobby: Scatter',
    height: 5.11,
    isStudent: true,
    color: 0xFFA52A2A,
    picture: "assets/Keith.jpg",
    studentId: '2026-0006',
    email: 'Lopez@puti.com',
    favoriteSubject: 'Scatter',
  )
];

class InteractiveFavButton extends StatefulWidget{
  const InteractiveFavButton({super.key});

  @override
  State<InteractiveFavButton> createState() => _InteractiveFavButtonState();
}

class _InteractiveFavButtonState extends State<InteractiveFavButton>
{
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(  
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: isFavorite ?   
      const Icon(
        Icons.favorite,
        color: Colors.red,
        size: 24.0,
        semanticLabel: 'Make it Reddd',
      ) :
      const Icon(
        Icons.favorite_border,
        color: Colors.red,
        size: 24.0,
        semanticLabel: 'Not red',
      )
    );
  }
}

class Profiles extends StatefulWidget {
  const Profiles({super.key});

  @override
  State<Profiles> createState() => _ProfileState();
}

class _ProfileState extends State<Profiles>
{
  bool isDeleted = false;

  Widget profilesOfEachUser(Profile profile)
  {
    return SizedBox(
      width: 350,
      height: 400,
      child: GestureDetector(
        onTap: ()
        {
          print("Bellooo");
        },
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
              Text(profile.studentId ?? "Not Provided",style: TextStyle(color: Colors.white)),
              Text(profile.email ?? "Not Provided",style: TextStyle(color: Colors.white)),
              Text(profile.favoriteSubject ?? "Not Provided",style: TextStyle(color: Colors.white)),
              InteractiveFavButton(),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.white),
                onPressed:  ()
                {
                  setState(() {
                    profiles.remove(profile);
                  });
                }
              ),
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  TextEditingController nameController =TextEditingController(text: profile.name);
                  TextEditingController hobbyController = TextEditingController(text: profile.hobby);
                  TextEditingController favsubController = TextEditingController(text: profile.favoriteSubject);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Edit Student'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                labelText: 'Name',
                              ),
                            ),
                            TextField(
                              controller: hobbyController,
                              decoration: const InputDecoration(
                                labelText: 'Hobby',
                              ),
                            ),
                            TextField(
                              controller: favsubController,
                              decoration: const InputDecoration(
                                labelText: 'Favorite Subject',
                              ),
                            )
                          ]
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                profile.name = nameController.text;
                                profile.hobby = hobbyController.text;
                                profile.favoriteSubject = favsubController.text;
                              });
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              
            ]
          ),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    profiles.sort((a,b) => (a.name ?? "").compareTo(b.name ?? ""));
    return Scaffold(
        backgroundColor: const Color(0xFFFFF8E7),
        appBar: AppBar(
          title: const Text("Doggie Profiles"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: profiles.isEmpty
            ? const Center(
          child: Text(
            "No students found.",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
            : ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            return profilesOfEachUser(profiles[index]);
          },
        ),
    );
  }
}

