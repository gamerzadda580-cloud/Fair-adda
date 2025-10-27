import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rewards")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade900,
                boxShadow: const [
                  BoxShadow(color: Colors.redAccent, blurRadius: 8, spreadRadius: 1),
                ],
              ),
              child: const Text(
                "Claim Your Rewards Now!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  rewardCard("Daily Login Bonus", "₹10", true),
                  rewardCard("Weekly Spin", "Free Entry Pass", false),
                  rewardCard("Referral Reward", "₹50", true),
                  rewardCard("Milestone Achieved", "Golden Badge", false),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              onPressed: () {},
              child: const Text("CLAIM NOW"),
            ),
          ],
        ),
      ),
    );
  }
}

class rewardCard extends StatelessWidget {
  final String title;
  final String reward;
  final bool claimable;

  const rewardCard(this.title, this.reward, this.claimable, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text("Reward: $reward"),
        trailing: claimable
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () {},
                child: const Text("CLAIM"),
              )
            : const Text("Claimed", style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}