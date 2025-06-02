import 'package:flutter/material.dart';
import 'package:ujian_rakryan/routes/approutes.dart';
import 'package:ujian_rakryan/widget/bottomnavbar.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _ProfileState();
}

class _ProfileState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Logout'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        context: context,
        currentIndex: 2,
        onTap: (index) {},
      ),
    );
  }
}