import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter Application',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,

      appBar: AppBar(
        title: const Text("My First Flutter Application"),
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                      AssetImage('assets/Kanade-L.jpg'),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Hello, I Am Bisaya",
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Carl Joshua Santos",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "BSIT-3",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "My First Flutter Application",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "August 11, 2026",
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Haluuuuuu"),
                        SizedBox(width: 20),
                        Text("RED"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [
                    const Text(
                      "My Favorites",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Movie:Your Name",
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Games: Genshin Impact, Valorant, Hollow Knight",
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Activity: Sleep",
                    ),

                    const SizedBox(height: 10),

                    const Chip(
                      label: Text("BelloWorld"),
                    ),

                    const SizedBox(height: 10),

                    ElevatedButton(
                      onPressed: () {
                        print("I Like The CTU Engineering Student");
                      },
                      child: const Text("Secret Favourite"),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}