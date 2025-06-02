import 'package:flutter/material.dart';
import 'package:ujian_rakryan/routes/approutes.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;
  final BuildContext context;

  BottomNavbar({
    required this.currentIndex,
    required this.context,
    required Null Function(dynamic index) onTap,
  });

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        if (currentIndex != 0)
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        break;
      case 1:
        if (currentIndex != 1)
          Navigator.pushReplacementNamed(context, AppRoutes.profile);
        break;
      case 2:
        if (currentIndex != 2)
          Navigator.pushReplacementNamed(context, AppRoutes.logout);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      currentIndex: currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 13,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 28,
            color: currentIndex == 0 ? Colors.redAccent : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 28,
            color: currentIndex == 1 ? Colors.redAccent : Colors.grey,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.logout,
            size: 28,
            color: currentIndex == 2 ? Colors.redAccent : Colors.grey,
          ),
          label: 'Logout',
        ),
      ],
    );
  }
}
