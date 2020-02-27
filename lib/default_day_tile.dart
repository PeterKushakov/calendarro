import 'package:calendarro/calendarro.dart';
import 'package:calendarro/date_utils.dart';
import 'package:flutter/material.dart';

class CalendarroDayItem extends StatelessWidget {
  CalendarroDayItem({this.date, this.calendarroState, this.onTap});

  DateTime date;
  CalendarroState calendarroState;
  DateTimeCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool daySelected = calendarroState.isDateSelected(date);
    var textColor = daySelected ? Colors.white : Colors.black;

    calendarroState = Calendarro.of(context);

    BoxDecoration boxDecoration;
    if (daySelected) {
      boxDecoration = BoxDecoration(
          color: Color.fromRGBO(42, 92, 132, 1), borderRadius: BorderRadius.all(
              Radius.circular(
                30.0,
              ),),);
    } 

    return Expanded(
        child: GestureDetector(
      child: Container(
          height: 40.0,
          decoration: boxDecoration,
          child: Center(
              child: Text(
            "${date.day}",
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ))),
      onTap: handleTap,
      behavior: HitTestBehavior.translucent,
    ));
  }

  void handleTap() {
    if (onTap != null) {
      onTap(date);
    }

    calendarroState.setSelectedDate(date);
    calendarroState.setCurrentDate(date);
  }
}
