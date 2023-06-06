import 'package:flutter/material.dart';
import '../widget/floatingActionButton.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Page 3',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      floatingActionButton: MyFlotingActionButton(
        color: Colors.blue,
      ),
    );
  }
}
