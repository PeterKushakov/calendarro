import 'package:flutter/widgets.dart';

class CalendarroWeekdayLabelsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text("SUN", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("MON", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("TUE", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("WED", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("THU", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("FRI", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        Expanded(child: Text("SAT", textAlign: TextAlign.center,style:TextStyle(fontSize:12,color:Color.fromRGBO(126, 126, 126, 1)))),
        
      ],
    );
  }
}