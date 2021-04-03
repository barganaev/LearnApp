import 'package:flutter/material.dart';

class StudentSubjectsScreen extends StatefulWidget {
  @override
  _StudentSubjectsScreenState createState() => _StudentSubjectsScreenState();
}

class _StudentSubjectsScreenState extends State<StudentSubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3b4254),
        title: Text('Lessons'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
        child: ListView(
          children: [
            Container(
              child: Card(
                child: ListTile(
                  leading: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    //color: Colors.red,
                    child: Row(
                      children: [
                        Icon(Icons.autorenew),
                        VerticalDivider(thickness: 1, indent: MediaQuery.of(context).size.height * 0.01, endIndent: MediaQuery.of(context).size.height * 0.01,)
                      ],
                    ),
                  ),
                  title: Text('Introduction to Driving'),
                  subtitle: Text('Intermediate'),
                  trailing: Icon(Icons.arrow_forward_ios),
                )
              ),
            ),
            Container(
              child: Card(
                  child: ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      //color: Colors.red,
                      child: Row(
                        children: [
                          Icon(Icons.autorenew),
                          VerticalDivider(thickness: 1, indent: MediaQuery.of(context).size.height * 0.01, endIndent: MediaQuery.of(context).size.height * 0.01,)
                        ],
                      ),
                    ),
                    title: Text('Introduction to Driving'),
                    subtitle: Text('Intermediate'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
              ),
            ),
            Container(
              child: Card(
                  child: ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      //color: Colors.red,
                      child: Row(
                        children: [
                          Icon(Icons.autorenew),
                          VerticalDivider(thickness: 1, indent: MediaQuery.of(context).size.height * 0.01, endIndent: MediaQuery.of(context).size.height * 0.01,)
                        ],
                      ),
                    ),
                    title: Text('Introduction to Driving'),
                    subtitle: Text('Intermediate'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
              ),
            ),
            Container(
              child: Card(
                  child: ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      //color: Colors.red,
                      child: Row(
                        children: [
                          Icon(Icons.autorenew),
                          VerticalDivider(thickness: 1, indent: MediaQuery.of(context).size.height * 0.01, endIndent: MediaQuery.of(context).size.height * 0.01,)
                        ],
                      ),
                    ),
                    title: Text('Introduction to Driving'),
                    subtitle: Text('Intermediate'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
