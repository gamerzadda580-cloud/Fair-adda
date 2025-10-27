import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/leaderboard.dart';
import '../screens/wallet.dart';
import '../screens/profile.dart';
import '../screens/rewards.dart';

class CommonNavbar extends StatefulWidget {
  const CommonNavbar({super.key});

  @override
  State<CommonNavbar> createState() => _CommonNavbarState();
}

class _CommonNavbarState extends State<CommonNavbar> {
  int _selectedIndex = 2;
  final List<Widget> _screens = const [
    RewardsScreen(),
    WalletScreen(),
    HomeScreen(),
    LeaderboardScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Rewards'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Leaderboard'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}