import 'package:flutter/material.dart';

class LearningScreen extends StatefulWidget {
  @override
  _LearningScreenState createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3b4254),
        title: Text('Lessons detail'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
          //height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.red,
                child: Text('Books'),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.orange,
                child: Text('Links'),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.green,
                child: Text('Videos'),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      //height: MediaQuery.of(context).size.height * 0.2,
                      //color: Colors.yellow,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                          border: Border.all(color: Colors.black)
                      ),
                      child: Text('Picture'),
                    );
                  }
                ),
              ),

              // Container(
              //   height: MediaQuery.of(context).size.height * 0.2,
              //   color: Colors.yellow,
              //   child: Text('Pictures'),
              // ),

              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.blue,
                child: Text('Fun Facts!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
