import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 40, backgroundColor: Colors.redAccent, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 10),
            const Text("Yashveer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text("Player ID: 001234", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                profileStat("Matches", "32"),
                profileStat("Wins", "12"),
                profileStat("Kills", "154"),
                profileStat("Earnings", "₹1200"),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent), child: const Text("EDIT PROFILE")),
            ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Colors.grey), child: const Text("SETTINGS")),
            ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent), child: const Text("LOGOUT")),
          ],
        ),
      ),
    );
  }

  static Widget profileStat(String label, String value) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}