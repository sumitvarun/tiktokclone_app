import 'package:flutter/material.dart';
import 'package:tiktokclone_app/widget/video_description.dart';
import 'package:tiktokclone_app/widget/actions_toolbar.dart';
import 'package:tiktokclone_app/widget/bottom_toolbar.dart';

void main() => runApp(TikTok());

class TikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        ),

      ),
      home: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          children: [
            //top section
            topSection,
            //middle section
            middleSection,
            //bottom section
            BottomSection(),
            
          ],
        ),
      ),
    );
  }
}
//widget top section
Widget get topSection => Container(
  height: 100.0,
  padding: EdgeInsets.only(bottom: 15.0),
  color: Colors.yellow[300],
);

//widget mid section

Widget get middleSection => Expanded(
  child: Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      VideoDescription(),
      ActionToolbar(),
    ],
  ),
);

//Widget bottom section
//Bottom Toolbar (Not named Navigation Toolbar because it clashes with a Flutter widget in the library):
// This is a fixed height widget at the bottom of the screen that contains the main application icons / actions.



