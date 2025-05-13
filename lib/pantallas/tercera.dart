import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:cupertino_calendar_picker/cupertino_calendar_picker.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

//Heredamos de un Stateful para poder modificar los colores
class Tercera extends StatefulWidget {
  @override
  TerceraPantallaState createState() => TerceraPantallaState();
}

//Herencia del Stateful
class TerceraPantallaState extends State<Tercera> {

  late Color screenPickerColor;

  void initState() {
    super.initState();
    screenPickerColor = Colors.blue;  // Material blue.
  }

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
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText : "Titulo de cita",
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                  ),
                  Text("Inicio cita"),
                  CupertinoCalendarPickerButton(
                    minimumDateTime: DateTime(2024, 7, 10),
                    maximumDateTime: DateTime(2025, 7, 10),
                    initialDateTime: DateTime(2024, 8, 15, 9, 41),
                    currentDateTime: DateTime(2024, 8, 15),
                    mode: CupertinoCalendarMode.dateTime,
                    timeLabel: 'Ends',
                    onDateTimeChanged: (date) {},
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  ColorPicker(
                    // Use the screenPickerColor as start and active color.
                    color: screenPickerColor,
                    // Update the screenPickerColor using the callback.
                    onColorChanged: (Color color) =>
                        setState(() => screenPickerColor = color),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
