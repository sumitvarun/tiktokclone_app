import 'package:flutter/material.dart';
//Video Description: This widget contains a column with text children inside.



class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: 70.0,
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('@SumitVarun', style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Video Title and some other stuff',),
          Row(children: [
            Icon(Icons.music_note, size: 15.0,),
            Text('Artist name - Album name - song', style: TextStyle(fontSize: 12.0,),),
          ],),
        ],
      ),
    ),);
  }
}

