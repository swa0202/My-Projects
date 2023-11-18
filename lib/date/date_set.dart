import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/date/time_set.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../const/styling.dart';
import 'package:flutter/cupertino.dart';


class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  DateTime today = DateTime.now();
  void _OnDaySelected (DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Restaurant'),
          backgroundColor: Colors.green, ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 12, left: 12, top: 30, bottom: 20,),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Choose a day and time to see if this special offer is available or not. Moreover, free services are available and reservations are confirmed immediately.",
                        style: TextStyle( fontSize: 16, color: Colors.grey,height: 1.35, ),),
                        SizedBox( height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 420,
                            width: 442,
                            decoration: BoxDecoration (
                              border: Border.all(color: Colors.grey, width: 1),
                              ),

                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: TableCalendar(
                                locale: "en_US",
                                rowHeight: 43,
                                headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true,),
                                availableGestures: AvailableGestures.all,
                                selectedDayPredicate: (day) => isSameDay (day , today),
                                focusedDay: today,
                                firstDay: DateTime.utc(2001, 1, 1),
                                lastDay: DateTime.utc(2050, 12, 31),
                                onDaySelected: _OnDaySelected,

                              ),
                            ),),),

                        SizedBox(height: 10,),

                        Align( alignment:Alignment.bottomRight,
                          child: TextButton(
                              child: const Text('Next>', style: TextStyle(color: Colors.green,
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              )),
                              onPressed: () { Get.to(const TimeSet());}

                          ),
                        ),

                ],),
                  )
                ),
              ),
            ),
          ),
    );


  }
}