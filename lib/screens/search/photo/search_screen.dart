import 'package:diplom_app/screens/search/photo/photo_screen.dart';
import 'package:diplom_app/screens/search/video/video_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoScreen()));
            },
            child: Text('Photo search')
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen()));
            },
            child: Text('Video search')
          ),
        ],
      ),
    );
  }
}
