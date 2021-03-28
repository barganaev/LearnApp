import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> with TickerProviderStateMixin {
  CalendarController _calendarController;
  AnimationController _animationController;

  DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(_selectedDay);
    _selectedDay = DateTime.parse(formatted);

    _calendarController = CalendarController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _animationController.forward();
  }


  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  // int _page = 0;
  // GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 149, 193, 1),
      body: TableCalendar(
        //locale: 'kk_KZ',
        calendarController: _calendarController,
        //events: _events,
        initialCalendarFormat: CalendarFormat.week,
        formatAnimation: FormatAnimation.slide,
        startingDayOfWeek: StartingDayOfWeek.monday,
        availableGestures: AvailableGestures.none,
        availableCalendarFormats: const {
          CalendarFormat.week: 'week',
        },
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          weekendStyle: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 18,
          ),
          weekdayStyle: TextStyle().copyWith(color: Colors.white, fontSize: 18),
          eventDayStyle: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekendStyle: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          weekdayStyle: TextStyle().copyWith(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        headerStyle: HeaderStyle(
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          formatButtonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
          ),
          formatButtonTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          centerHeaderTitle: true,
          formatButtonVisible: false,
          formatButtonShowsNext: false,
        ),
        builders: CalendarBuilders(
          selectedDayBuilder: (context, date, _) {
            return FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0).animate(_animationController),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                width: 100,
                height: 100,
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: TextStyle().copyWith(
                      fontSize: 18.0,
                      color: Colors.blue.shade800,
                    ),
                  ),
                ),
              ),
            );
          },
          todayDayBuilder: (context, date, _) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                    253, 188, 78, 1), //Color.fromRGBO(0, 121, 255, 1),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                  '${date.day}',
                  style: TextStyle().copyWith(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
          markersBuilder: (context, date, events, holidays) {
            final children = <Widget>[];

            if (events.isNotEmpty) {
              children.add(
                Positioned(
                  right: 1,
                  bottom: 1,
                  child: _buildEventsMarker(date, events),
                ),
              );
            }
            return children;
          },
        ),
        // onDaySelected: (date, events, holidays) {
        //   _onDaySelected(date, events, holidays);
        //   _animationController.forward(from: 0.0);
        // },
        // onVisibleDaysChanged: _onVisibleDaysChanged,
        // onCalendarCreated: _onCalendarCreated,
      ),
    );
  }
}

Widget _buildEventsMarker(DateTime date, List events) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    width: 16.0,
    height: 16.0,
    child: Center(
      child: Text(
        '${events.length}',
        style: TextStyle().copyWith(
          color: Color.fromRGBO(
              253, 188, 78, 1), //Color.fromRGBO(253, 154, 40, 1),
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
