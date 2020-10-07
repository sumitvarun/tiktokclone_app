import 'package:flutter/material.dart';
//Bottom Toolbar (Not named Navigation Toolbar because it clashes with a Flutter widget in the library):
// This is a fixed height widget at the bottom of the screen that contains the main application icons / actions.


class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List<Widget>.generate(5, (index) => Container(
        width: 40.0, height: 40.0,
        color: Colors.purple[300],
      ),),
    );
  }
}
