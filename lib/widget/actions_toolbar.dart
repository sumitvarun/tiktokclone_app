import 'package:flutter/material.dart';
import 'package:tiktokclone_app/fonts/tiktokicons.dart';
//Actions Toolbar: This is a fixed width widget on the right hand side of the screen that contains the actions that can be performed from each video.



class ActionToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      //color: Colors.red[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getSocialAction( icon: TikTokIcons.heart,title: '3.2m'),
          _getSocialAction(icon: TikTokIcons.chat_bubble,title: '16.4k'),
          _getSocialAction(icon: TikTokIcons.reply, title: 'Share'),
          _getSocialAction(icon: TikTokIcons.profile,title: 'Profile',)


        ]
      ),
    );
  }
}


Widget _getSocialAction({
  String title,
  IconData icon}) {
  return Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 60.0,
      height: 60.0,
      child: Column(children: [
        Icon(icon,  size: 35.0, color: Colors.grey[300]),
        Padding(
          padding: EdgeInsets.only(top:  2.0),
          child: Text(title, style: TextStyle(fontSize: 12.0)),
        )
      ]));
}