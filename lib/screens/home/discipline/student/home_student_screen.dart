import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_student_subjects_screen.dart';
// import 'package:imagebutton/imagebutton.dart';

class HomeStudentScreen extends StatefulWidget {
  @override
  _HomeStudentScreenState createState() => _HomeStudentScreenState();
}

class _HomeStudentScreenState extends State<HomeStudentScreen> {
  // List _faculties = [];

  // Future<void> facultyJson() async {
  //   final String response = await rootBundle.loadString('assets/faculty/faculty.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     _faculties = data["faculties"];
  //   });
  // }

  bool currentFaculty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        /*ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(_faculties[index]., fit: BoxFit.fill,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10,
                ),
              ),
            );
          }
        )*/
        ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/agriculture.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/architecture.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/arts.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/business.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/computer.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/education.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/engineering.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/fitness.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/humanitites.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/law.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/mba.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/media.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/medicine.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: GestureDetector(
                onTap: (){
                  currentFaculty = true;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StudentSubjectsScreen()));
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset('assets/images/sciences.jpg', fit: BoxFit.fill,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/travel.jpg', fit: BoxFit.fill,),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
            ),
          ),





          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red
              ),
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
              ),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          )

          /*Image.asset(
              'assets/images/agriculture.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            TextButton(
              child: Text("Agriculture"),
              onPressed: () {},
            ),
            Image.asset(
              'assets/images/architecture.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/arts.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/business.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/computer.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/education.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/engineering.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/fitness.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/humanitites.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/law.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/mba.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/media.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/medicine.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/sciences.jpg',
              fit: BoxFit.cover,
            ),
            Divider(color: Colors.black, thickness: 3,),
            Image.asset(
              'assets/images/travel.jpg',
              fit: BoxFit.cover,
            ),*/
        ],
      ),
      ),
    );
  }
}
