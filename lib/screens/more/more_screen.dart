import 'package:diplom_app/screens/auth/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  // MoreScreen({Key key, this.uid}) : super(key: key);

  final String uid;
  MoreScreen({this.uid});

  @override
  _MoreScreenState createState() => _MoreScreenState(/*this.uid*/);
}

class _MoreScreenState extends State<MoreScreen> {
  // _MoreScreenState(String uuid){
  //   this.uid = uuid;
  // }

  String uid;
  bool visibil2 = false;
  final texController = TextEditingController();
  bool switchh = false;

  @override
  Widget build(BuildContext context) {
    User result = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.05, horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Image.asset('assets/account_avatar.png'),
                    backgroundColor: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromRGBO(34, 149, 193, 1)
                    )
                  ),
                ),


                    Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Card(
                        elevation: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                          child: Column(
                            children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FutureBuilder(
                                    // future: FirebaseDatabase.instance.reference().child('Users').once(),
                                    future: FirebaseDatabase.instance.reference().child('Users').child(result.uid).once(),
                                    builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                                      if(snapshot.hasData) {
                                        // print('${snapshot.data.value}');
                                        return Text(snapshot.data.value['email']);
                                      } else {
                                        // print('${snapshot.data.value}');
                                        print('Error in more_screen.dart');
                                        return CircularProgressIndicator();
                                      }
                                    }
                                  ),
                                  FutureBuilder(
                                    // future: FirebaseDatabase.instance.reference().child('Users').once(),
                                    future: FirebaseDatabase.instance.reference().child('Users').child(result.uid).once(),
                                    builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                                      if(snapshot.hasData) {
                                        return Text(snapshot.data.value['name']);
                                      } else {
                                        return CircularProgressIndicator();
                                      }
                                    }
                                  )
                                  // Text('Email: '),
                                  // Text('zbarganaev@gmail.com'),
                                ],
                              ),
                            ),
                            Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nickname: '),
                                    Text('zaker37'),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Change password: '),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          visibil2 = !visibil2;
                                        });
                                      },
                                      child: Icon(Icons.keyboard_arrow_down)
                                    )
                                    // Text(''),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: visibil2,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                                  child: TextFormField(
                                    controller: texController,
                                  ),
                                )
                              ),
                              Visibility(
                                visible: visibil2,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      visibil2 = !visibil2;
                                    });
                                  },
                                  child: Text("Save"),
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Push notification: '),
                                    // Text(''),
                                    CupertinoSwitch(
                                      value: switchh,
                                      onChanged: (bool value){
                                        setState(() {
                                          switchh = value;
                                        });
                                      },
                                      activeColor: Colors.green,
                                      trackColor: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('About app '),
                                    Icon(Icons.info)
                                    // Text('zbarganaev@gmail.com'),
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02, horizontal: MediaQuery.of(context).size.width * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Log Out '),
                                    InkWell(
                                      onTap: () async {
                                        FirebaseAuth auth = FirebaseAuth.instance;
                                        await auth.signOut();
                                        auth.signOut().then((value) {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(builder: (context) => SignUp()),
                                                  (Route<dynamic> route) => false);
                                        });
                                      },
                                      child: Icon(Icons.exit_to_app)
                                    ),
                                    // Text(''),
                                  ],
                                ),
                              ),
                              Divider(),

                            ],
                          ),
                        ),
                      ),
                    )

                // Text('Nickname'),
                // Divider(),
                // Text('E.mail: zbarganaev@gmail.com'),
                // Text('Nickname: zaker37'),
                // Text('Change password'),
                // Text('On/Off push-notification'),
                // Text('About app'),
                // Text('Log Out'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
