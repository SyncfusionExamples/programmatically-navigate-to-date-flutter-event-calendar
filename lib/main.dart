import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(ProgrammaticDateNavigation());

class ProgrammaticDateNavigation extends StatefulWidget {
  @override
  DateNavigationState createState() => DateNavigationState();
}

class DateNavigationState extends State<ProgrammaticDateNavigation> {
  CalendarController _controller;

  @override
  void initState() {
    _controller = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
              child: RaisedButton(
                child: Text('Change display date'),
                onPressed: () {
                  _controller.displayDate = DateTime(2020, 5, 1, 9, 0, 0);
                },
              ),
            ),
            Container(height: 560,
              child:
              SfCalendar(
                view: CalendarView.day,
                controller: _controller,
              ),
            ),
          ],
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
