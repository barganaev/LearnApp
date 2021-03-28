import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diplom_app/screens/calendar/calendar_screen.dart';
import 'package:diplom_app/screens/home/home_screen.dart';
import 'package:diplom_app/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  String _title = "Күнтізбе";

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    Text('First'),
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
    //return MultiBlocProvider(
      // providers: [
      //   BlocProvider<ScheduleBloc>(
      //     create: (context) => ScheduleBloc()..add(ScheduleFetchEvent()),
      //   ),
      //   BlocProvider<GetClassBloc>(
      //     create: (context) => GetClassBloc()..add(GetClassInitialEvent()),
      //   ),
      //   BlocProvider<OwnClassBloc>(
      //     create: (context) => OwnClassBloc()..add(OwnClassInitialEvent()),
      //   ),
      // ],
      /*child:*/return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(title: Center(child: Text('$_title')), backgroundColor: Color.fromRGBO(34, 149, 193, 1),),
          //appBar: myAppBar(context, '${_title}'),
          //drawer: CustomDrawer(),
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
            color: Color(
                0xFF2295C1) /*Color.fromRGBO(0, 121, 255, 1)*/, // 34, 149, 193, 0
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
                  _title = "Saved";
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
        ),
      /*),*/
    );
  }
}
