import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diplom_app/screens/auth/signup_screen.dart';
import 'package:diplom_app/screens/calendar/alarm_screen/alarm_screen.dart';
import 'file:///D:/4%20course%202%20semestr/DiplomProject/diplom_app/lib/screens/calendar/calendar_screen/calendar_screen.dart';
import 'package:diplom_app/screens/home/home_screen.dart';
import 'package:diplom_app/screens/saved/saved_screen.dart';
import 'file:///D:/4%20course%202%20semestr/DiplomProject/diplom_app/lib/screens/search/photo/search_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


class NavBar extends StatefulWidget {
  NavBar({this.uid});
  final String uid;
  final String title = "Navbar - Home";

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  String _title = "Главная";

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    ChatsPage(),
    CalendarScreen(),
    Text('First')
  ];

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Future<void> _signOut() async {
      try {
        await FirebaseAuth.instance.signOut();
      } catch (e) {
        print(e); // TODO: show dialog with error
      }
    }
      /*child:*/return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(centerTitle: true, title: Text('$_title'), backgroundColor: Color.fromRGBO(34, 149, 193, 1),),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 60.0,
            items: <Widget>[
              Icon(
                Icons.home,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.save,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.calendar_today_rounded,
                size: 20,
                color: Colors.white,
              ),
              Icon(
                Icons.more_horiz_rounded, // or Icons.perm_identity
                size: 20,
                color: Colors.white,
              ),
            ],
            color: Color(0xFF2295C1) /*Color.fromRGBO(0, 121, 255, 1)*/, // 34, 149, 193, 0
            buttonBackgroundColor: Color(0xFF2295C1) /*Colors.blueAccent*/,
            backgroundColor: Colors.white,
            // backgroundColor: Color(0xFF2295C1),
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 200),
            onTap: (index) {
              setState(() {
                if (index == 0) {
                  _title = "Home";
                } else if (index == 1) {
                  _title = "Search";
                } else if (index == 2) {
                  _title = "Messenger";
                } else if (index == 3) {
                  _title = "Calendar";
                }else{
                  _title = "More";
                }
                _currentIndex = index;
              });
            },
          ),
          body: _children[_currentIndex],
          drawer: NavigateDrawer(uid: widget.uid),
        ),
      /*),*/
    );
  }
}


class NavigateDrawer extends StatefulWidget {
  final String uid;
  NavigateDrawer({Key key, this.uid}) : super(key: key);
  @override
  _NavigateDrawerState createState() => _NavigateDrawerState();
}

class _NavigateDrawerState extends State<NavigateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: FutureBuilder(
                future: FirebaseDatabase.instance
                    .reference()
                    .child("Users")
                    .child(widget.uid)
                    .once(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.value['email']);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            accountName: FutureBuilder(
                future: FirebaseDatabase.instance
                    .reference()
                    .child("Users")
                    .child(widget.uid)
                    .once(),
                builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.value['name']);
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.home, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Navbar - Home'),
            onTap: () {
              //print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar(uid: widget.uid)),
              );
            },
          ),
          ListTile(
            leading: new IconButton(
              //icon: new Icon(Icons.settings, color: Colors.black),
              icon: new Icon(Icons.exit_to_app, color: Colors.black),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                // Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SignUp()),
                // );
              },
              // onPressed: () => null,
            ),
            title: Text('Exit'),
            // title: Text('Settings'),
            onTap: () async {
              print(widget.uid);
              FirebaseAuth auth = FirebaseAuth.instance;
              await auth.signOut();
              auth.signOut().then((value) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                  (Route<dynamic> route) => false);
              });
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.alarm, color: Colors.black),
              onPressed: (){
                Navigator.of(context).push(_createRoute());
                //Navigator.push(context, MaterialPageRoute(builder: (context) => AlarmScreen()));
              },
            ),
            title: Text('Alarm clock'),
            onTap: () {
              //print(widget.uid);
              Navigator.of(context).push(_createRoute());
            },
          ),
          ListTile(
            leading: new IconButton(
              icon: new Icon(Icons.settings, color: Colors.black),
              onPressed: () => null,
            ),
            title: Text('Settings'),
            onTap: () {
              //print(widget.uid);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar(uid: widget.uid)),
              );
            },
          ),
        ],
      ),
    );
  }
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AlarmScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}