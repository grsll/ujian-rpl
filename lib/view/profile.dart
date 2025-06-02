import 'package:flutter/material.dart';
import 'package:ujian_rakryan/widget/bottomnavbar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('profile')],
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        context: context,
        currentIndex: 1,
        onTap: (index) {},
      ),
    );
  }
}
