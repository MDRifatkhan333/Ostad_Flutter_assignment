import 'package:flutter/material.dart';
import 'package:module5/page/page1.dart';
import 'package:module5/page/page2.dart';
import 'package:module5/page/page3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final item = [
    const Text(
      'P1',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      'P2',
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      'P3',
      style: TextStyle(fontSize: 20),
    ),
  ];
  final _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  int index = 0;
  void _changePage(int selectIndex) {
    setState(() {
      index = item.indexOf(item[selectIndex]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Page 1'),
              onTap: () {
                _changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Page 2'),
              onTap: () {
                _changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Page 3'),
              onTap: () {
                _changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: item,
        index: index,
        backgroundColor: Colors.white,
        color: Colors.blue,
        onTap: (selectIndex) {
          setState(() {
            index = selectIndex;
          });
        },
      ),
      body: _pages[index],
    );
  }
}
