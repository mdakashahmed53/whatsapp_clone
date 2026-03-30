import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';
import 'package:whatsapp/login_screen.dart';
import 'package:whatsapp/singup_screen.dart';
import 'package:whatsapp/widget/show_alert_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List _screen = [Home(), SingupScreen(), LogIn(), ShowAlertDialog()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.amber,
          
        ),
        
        child: NavigationBar(
          
          
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          indicatorColor: Colors.black87,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.login), label: 'SingUp'),
            NavigationDestination(
              icon: Icon(Icons.login_outlined),
              label: 'LogIn',
            ),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
