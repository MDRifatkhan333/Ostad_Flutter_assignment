import 'package:flutter/material.dart';

class MyFlotingActionButton extends StatelessWidget {
  const MyFlotingActionButton({Key? key, required this.color})
      : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: color,
      child: const Icon(Icons.add),
    );
  }
}
