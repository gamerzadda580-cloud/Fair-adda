import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {"icon": Icons.trophy, "msg": "You won ₹200 in Clash Squad!"},
      {"icon": Icons.monetization_on, "msg": "Wallet updated: +₹100"},
      {"icon": Icons.notifications_active, "msg": "New Weekly Match Available!"},
      {"icon": Icons.stars, "msg": "You reached Platinum Tier!"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, i) {
          final n = notifications[i];
          return Card(
            color: Colors.grey.shade900,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(n["icon"] as IconData, color: Colors.redAccent),
              title: Text(n["msg"]!),
            ),
          );
        },
      ),
    );
  }
}