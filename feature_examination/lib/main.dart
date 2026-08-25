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
      title : 'VAMOSSSSS VALOBOT',
      home: const Profile(),
    );
  }
}

class Players
{
  final String picture;
  final String? name;
  final String rank;
  final int? gameScore;
  final int? kill;
  final int? death;
  final int? assist;
  const Players(
    {
    required this.picture,  this.name, required this.rank , this.gameScore,  this.kill,  this.death,  this.assist
    }
  );
}

const List<Players> player =[
  Players(
    picture: 'assets/Agents/phoenix.webp', 
    name: 'Scyn4pse',
    rank: 'assets/Ranks/gold-2.webp',
    gameScore: 261, 
    kill: 23, 
    death: 21, 
    assist: 6),

  Players(
    picture: 'assets/Agents/sova.webp',
    name: 'Kislalat',
    rank: 'assets/Ranks/plat-1.webp',
    gameScore: 190,
    kill: 17,
    death: 21,
    assist: 8,
  ),
  Players(
    picture: 'assets/Agents/chamber.webp',
    name: 'Chamber',
    rank: 'assets/Ranks/plat-1.webp',
    gameScore: 0,
    kill: 0,
    death: 0,
    assist: 0
  ),
];

class Profile extends StatelessWidget{
  const Profile({super.key});

  Widget profileOfEachGame(Players player)
  {
    return SizedBox(
      width: 400,
      height: 100,
      child: Card(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        ),
        color: Colors.black87,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(player.picture),
                ),
                Text(player.name ?? "Bello", style: TextStyle(color: Colors.white),)
              ]
            ),
        )
    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valobot',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('>  Match Details', style: TextStyle(color: Colors.white)),
          backgroundColor : Colors.black,
        ),
        // IMMA MAKE YOU SOME UHHHHH PROFILES JUST WAIT ==============================================
        body: ListView(
          children: [
            Image.asset('assets/Map/ascent.jpg'),
            profileOfEachGame(player[0]),
            profileOfEachGame(player[1]),
            profileOfEachGame(player[2]),
          ],
        )

        // HERE IS THE END ===========================================================================
      ),
    );
  }
}