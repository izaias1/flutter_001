import 'package:flutter/material.dart';
import './ajuda.dart';
import './home.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter 01'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.help)),
          ]),
        ),
        body: TabBarView(children: [
          HomePage(),
          AjudaPage(),
        ]),
      ),
    );
  }
}
