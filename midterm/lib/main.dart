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
      title: 'Match Details',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Profile(),
        '/chat' : (context) => const Chat()
      }
    );
  }
}


class Profiles{
  String? status;
  String? name;
  int? icon;

  Profiles({
    this.status,
    this.name,
    this.icon
  });
}

/*

ICON LEGENDS
Green Icon -> 0
Play Icon  -> 1
Sleep Icon -> 2

*/

List<Profiles> onValorant = [
  Profiles(status: 'Online - VALORANT', name: 'MissYouLikeKrazy', icon: 0),
  Profiles(status: 'Playing - VALORANT', name: 'bread', icon: 1),
  Profiles(status: 'Playing - VALORANT', name: 'The14th', icon: 1),
];

List <Profiles> onMobile = [
  Profiles(status: 'Away - Riot Mobile', name: 'Carlvendish', icon: 2),
  Profiles(status: 'Away - Riot Mobile', name: 'D1yah', icon: 2),
];

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{
  Widget profileOfValoGamer(Profiles profile) {
    return   GestureDetector(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chat(
                
              ))
            );
          },  
          child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Card(
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.white10,
                child: const Icon(Icons.person, color: Colors.red, size: 40,),
              )
            ),
            Column(
              children: [

                Text(profile.name ?? "Unknown", style: TextStyle(color: Colors.white70)),
                Row(
                  children: [
                    Icon(Icons.monitor, color: Colors.white70,),
                    Text('  ${profile.status ?? "Unknown"}', style: TextStyle(color: Colors.white70)),
                  ],
                )
              ],
            )
          ],
        )
      
    )
        );
      
  }

  bool _isLoading = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Social', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
      ),
      backgroundColor: Colors.black87,
      body: ListView(
        children: [
// ============================================================\


        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Column(
                    children: const [
                      Text('    Friends', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height:10),
                      SizedBox(height: 3, width: 60, child:ColoredBox(color: Colors.red))
                    ],
                  )
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Column(
                    children: const [
                      Text(' Messages', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height:10),
                      SizedBox(height: 3, width: 60, child:ColoredBox(color: Colors.black))
                    ],
                  )
                ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Column(
                    children: const [
                      Text(' Request', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height:10),
                      SizedBox(height: 3, width: 60, child:ColoredBox(color: Colors.black))
                    ],
                  )
                ),
              ],

            ),
            const Divider(color: Colors.white24, height:  1),

            const SizedBox(height:20),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(17),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.white,),
                  Text('  Search', style: TextStyle(color: Colors.white70),)
                ],
              )
            ),
            Row(
              children: [
                Text('  '),
                  CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.mobile_friendly, color: Colors.red, size: 30,),
                ),
                  Text('  VALORANT', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),),
                  Text('  3', style: TextStyle(color: Colors.white10, fontWeight: FontWeight.bold),)
              ],
            ),
            Column(
              children: [
                ListView.builder(
                itemCount: onValorant.length,
                itemBuilder: (context, index){ 
                return profileOfValoGamer(onValorant[index]);
                },
              ),
              ]
            ),
              

            Expanded(
              child: onValorant.isEmpty
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
              itemCount: onValorant.length,
              itemBuilder: (context, index) {
                return profileOfValoGamer(onValorant[index]);
              },
            ), 
            ),
          
            // for (final p in onValorant) profileOfValoGamer(p),

            Row(
              children: [
                
                  Text('     ONLINE', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),),
                  Text('  4', style: TextStyle(color: Colors.white10, fontWeight: FontWeight.bold),)
              ],
            ),

            // for (final p in onMobile) profileOfValoGamer(p),
            Expanded(
              child: onMobile.isEmpty
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
              itemCount: onMobile.length,
              itemBuilder: (context, index) {
                return profileOfValoGamer(onValorant[index]);
              },
            ), 
            ),
          ],
        ),




// Unya ka 
// ============================================================
        ]
      ),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({super.key});
  
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Social', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
      ),
      backgroundColor: Colors.black87,
      body: Column(
      
      children: [
        // ===================================================

        // Later, Ill finish da builder first oki?

        // =====================================================
      ],


      )
    );
  }
}