import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Fav',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            )
          ]),
        ),
      body: TabBarView(children: [
        Column(
          children: [
              
          ],
        ),
        Column(
        children: [Container(height: 300, color: Colors.green)],
            ),

            Column(
              children: [Container(height: 300, color: Colors.black)],
            ),
      ]),
      ),
    );
  }
}