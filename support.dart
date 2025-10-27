import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = [
      {"q": "How to join a match?", "a": "Go to Home > Select Match > Tap Join."},
      {"q": "How to withdraw money?", "a": "Go to Wallet > Withdraw > Enter amount & method."},
      {"q": "How to contact support?", "a": "Use the chat box below or email support@gamerzadda.com."},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Support")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("FAQs", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: faqs.length,
                itemBuilder: (context, i) {
                  final f = faqs[i];
                  return ExpansionTile(
                    collapsedBackgroundColor: Colors.grey.shade900,
                    backgroundColor: Colors.grey.shade900,
                    title: Text(f["q"]!, style: const TextStyle(fontWeight: FontWeight.bold)),
                    children: [Padding(padding: const EdgeInsets.all(8.0), child: Text(f["a"]!))],
                  );
                },
              ),
            ),
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      filled: true,
                      fillColor: Colors.grey.shade900,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                  onPressed: () {},
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}