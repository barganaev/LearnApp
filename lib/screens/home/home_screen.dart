import 'package:diplom_app/screens/home/home_student_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeStudentScreen()));
              },
              child: Text('Student')
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('Pupil')
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('Other')
          ),
        ],
      ),
    );
  }
}
