import 'package:flutter/material.dart';
import 'match_details.dart';
import 'wallet.dart';
import 'leaderboard.dart';
import 'profile.dart';
import 'rewards.dart';
import 'notifications.dart';
import 'support.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    MatchListView(),
    WalletScreen(),
    LeaderboardScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gamerz Adda", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: const [
          Icon(Icons.account_balance_wallet_rounded),
          SizedBox(width: 16),
          Icon(Icons.notifications_active_rounded),
          SizedBox(width: 12),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Leaderboard"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(child: Text("Menu", style: TextStyle(fontSize: 22, color: Colors.redAccent))),
            ),
            ListTile(
              title: const Text("Rewards"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RewardsScreen())),
            ),
            ListTile(
              title: const Text("Notifications"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NotificationsScreen())),
            ),
            ListTile(
              title: const Text("Support"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SupportScreen())),
            ),
          ],
        ),
      ),
    );
  }
}

class MatchListView extends StatelessWidget {
  const MatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        matchCard(context, "Clash Squad Battle", "₹50", "₹500", "Bermuda"),
        matchCard(context, "Full Map Tournament", "₹30", "₹300", "Kalahari"),
        matchCard(context, "Solo Challenge", "₹20", "₹200", "Purgatory"),
      ],
    );
  }

  Widget matchCard(BuildContext context, String title, String entry, String prize, String map) {
    return Card(
      color: Colors.grey.shade900,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Map: $map • Entry: $entry • Prize: $prize"),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MatchDetailsScreen())),
          child: const Text("Join"),
        ),
      ),
    );
  }
}