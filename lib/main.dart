import 'package:flutter/material.dart';

void main() => runApp(TikTok());

class TikTok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(primaryColor: Colors.brown[400]),
      home: Scaffold(

        body: Column(
          children: [
            //top section
            topSection,
            //middle section
            middleSection,
            //bottom section
            bottomSection,
            
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

//Video Description: This widget contains a column with text children inside.
Widget get videoDescription => Expanded(child: Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(height: 10.0, color:  Colors.green[300], margin: EdgeInsets.only(top: 10),),
    Container(height: 10.0, color:  Colors.green[300], margin: EdgeInsets.only(top: 10),),
    Container(height: 10.0, color:  Colors.green[300], margin: EdgeInsets.only(top: 10),),
    Container(height: 10.0, color:  Colors.green[300], margin: EdgeInsets.only(top: 10),),
    Container(height: 10.0, color:  Colors.green[300], margin: EdgeInsets.only(top: 10),),

  ],
),);

//Actions Toolbar: This is a fixed width widget on the right hand side of the screen that contains the actions that can be performed from each video.
Widget get actionsToolbar => Container(
  width: 100.0,
  color: Colors.red[300],
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: List<Widget>.generate(5, (index) => Container(
      width: 60,height: 60,
      color:  Colors.blue[300],
      margin: EdgeInsets.only(top: 20.0),
    ),),
  ),
);
Widget get middleSection => Expanded(
  child: Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      videoDescription,
      actionsToolbar,
    ],
  ),
);

//Widget bottom section


//Bottom Toolbar (Not named Navigation Toolbar because it clashes with a Flutter widget in the library):
// This is a fixed height widget at the bottom of the screen that contains the main application icons / actions.
Widget get bottomSection =>   Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: List<Widget>.generate(5, (index) => Container(
    width: 40.0, height: 40.0,
    color: Colors.purple[300],
  ),),
);
