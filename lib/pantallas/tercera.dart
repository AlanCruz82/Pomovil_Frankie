import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:cupertino_calendar_picker/cupertino_calendar_picker.dart';

class Tercera extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: SfCalendar(
            view: CalendarView.month,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:
              () => showDialog<String>(
            context: context,
            builder:
                (BuildContext context) => AlertDialog(
              title: const Text('Agenda tu cita'),
              content: const Text('Ventana para agendar tu cita'),
              actions: <Widget>[

              ],
            ),
          ),
        ),
    );
  }
}
