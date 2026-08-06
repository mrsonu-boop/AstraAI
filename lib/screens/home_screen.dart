import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AstraAI"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Hello 👋",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Welcome to AstraAI",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,

                children: [

                  featureCard(Icons.chat, "AI Chat"),

                  featureCard(Icons.picture_as_pdf, "PDF Chat"),

                  featureCard(Icons.image, "Image AI"),

                  featureCard(Icons.code, "Code Assistant"),

                  featureCard(Icons.mic, "Voice AI"),

                  featureCard(Icons.settings, "Settings"),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  Widget featureCard(IconData icon, String title) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 50,
            color: Colors.deepPurple,
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}