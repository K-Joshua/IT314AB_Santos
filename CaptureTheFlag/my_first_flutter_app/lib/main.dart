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
      backgroundColor: const Color(0xFF6A1B9A), // Purple background
      appBar: AppBar(
        title: const Text("My First Flutter Application"),
        backgroundColor: const Color(0xFF4A148C),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage('assets/Kanade-L.jpg'),
                ),
                const SizedBox(height: 20),

                const Text(
                  "Carl Joshua Santos",
                  textAlign: TextAlign.center,
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
                    fontSize: 22,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "My First Flutter Application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "August 4, 2026",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Kanade Yoisaki",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}