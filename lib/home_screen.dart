import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "HOME",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("PROFILE"),
                Text("SERVICES"),
                Text("ACTIVITY"),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StudentScreen(),
                      ),
                    );
                  },
                  child: const Text("API USERS"),
                ),

                homeButton("SEARCH"),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homeButton("ALERTS"),
                homeButton("PROFILE"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget homeButton(String text) {
    return Container(
      width: 120,
      height: 40,
      alignment: Alignment.center,
      color: Colors.grey.shade300,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}