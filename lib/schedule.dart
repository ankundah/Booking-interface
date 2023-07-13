import 'package:flutter/material.dart';

enum FilterStatus { Available, Booked, Missed }

class ScheduleTab extends StatefulWidget {
  const ScheduleTab({Key? key}) : super(key: key);

  @override
  State<ScheduleTab> createState() => _ScheduleTabState();
}

class _ScheduleTabState extends State<ScheduleTab> {
  FilterStatus status = FilterStatus.Available;
  Alignment _alignment = Alignment.centerLeft;



  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> schedules = [
      {
        'img': 'assets/doctor01.jpeg',
        'doctorName': 'Dr. Anastasya Syahid',
        'sessionTitle': 'Family Therapy',
        'reservedDate': 'Monday, Aug 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Missed,
      },
      {
        'img': 'assets/doctor02.png',
        'doctorName': 'Dr. Mauldya Imran',
        'sessionTitle': 'Couples Therapy',
        'reservedDate': 'Monday, Sep 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Booked
      },
      {
        'img': 'assets/doctor03.jpeg',
        'doctorName': 'Dr. Rihanna Garland',
        'sessionTitle': 'Psychodynamic Psychotherapy',
        'reservedDate': 'Monday, Jul 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Available
      },
      {
        'img': 'assets/doctor04.jpeg',
        'doctorName': 'Dr. John Doe',
        'sessionTitle': 'Mindfulness-based cognitive Therapy ',
        'reservedDate': 'Monday, Jul 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Booked
      },
      {
        'img': 'assets/doctor05.jpeg',
        'doctorName': 'Dr. Sam Smith',
        'sessionTitle': 'Behaviour Therapy',
        'reservedDate': 'Monday, Jul 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Available
      },
      {
        'img': 'assets/doctor05.jpeg',
        'doctorName': 'Dr. Shaun Murphy',
        'sessionTitle': 'Cognitive Therapy',
        'reservedDate': 'Monday, Jul 29',
        'reservedTime': '11:00 - 12:00',
        'status': FilterStatus.Available
      },
    ];

    List<Map<String, dynamic>> filteredSchedules = schedules.where((schedule) {
      return schedule['status'] == status;
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(MyColors.bg),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (FilterStatus filterStatus in FilterStatus.values)
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (filterStatus == FilterStatus.Available) {
                                  status = FilterStatus.Available;
                                  _alignment = Alignment.centerLeft;
                                } else if (filterStatus == FilterStatus.Booked) {
                                  status = FilterStatus.Booked;
                                  _alignment = Alignment.center;
                                } else if (filterStatus == FilterStatus.Missed) {
                                  status = FilterStatus.Missed;
                                  _alignment = Alignment.centerRight;
                                }
                              });
                            },
                            child: Center(
                              child: Text(
                                filterStatus.name,
                                style: kFilterStyle,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                AnimatedAlign(
                  duration: Duration(milliseconds: 200),
                  alignment: _alignment,
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(MyColors.primary),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        status.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSchedules.length,
                itemBuilder: (context, index) {
                  var _schedule = filteredSchedules[index];
                  bool isLastElement = filteredSchedules.length + 1 == index;
                  return Card(
                    margin: !isLastElement
                        ? EdgeInsets.only(bottom: 20)
                        : EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(_schedule['img']),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _schedule['doctorName'],
                                    style: TextStyle(
                                      color: Color(MyColors.header01),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    _schedule['sessionTitle'],
                                    style: TextStyle(
                                      color: Color(MyColors.grey02),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          DateTimeCard(),
                          SizedBox(height: 15),
                          _ActionButton(_schedule['status']),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _ActionButton(FilterStatus scheduleStatus) {
    if (scheduleStatus == FilterStatus.Available) {
      return ElevatedButton(
        onPressed: () {
          // Handle book appointment action
        },
        child: Text('Book Appointment'),
      );
    } else if (scheduleStatus == FilterStatus.Missed) {
      return ElevatedButton(
        onPressed: () {
          // Handle reschedule action
        },
        child: Text('Reschedule'),
      );
    } else if (scheduleStatus == FilterStatus.Booked) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
            onPressed: () {
              // Handle cancel action
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle reschedule action
            },
            child: Text('Reschedule'),
          ),
        ],
      );
    } else {
      return SizedBox(); // Return empty widget if status is unknown
    }
  }
}

class DateTimeCard extends StatelessWidget {
  const DateTimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(MyColors.bg03),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Color(MyColors.primary),
                size: 15,
              ),
              SizedBox(width: 5),
              Text(
                'Mon, July 29',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(MyColors.primary),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_alarm,
                color: Color(MyColors.primary),
                size: 17,
              ),
              SizedBox(width: 5),
              Text(
                '11:00 ~ 12:10',
                style: TextStyle(
                  color: Color(MyColors.primary),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle kTitleStyle = TextStyle(
  color: Color(MyColors.header01),
  fontWeight: FontWeight.bold,
);

TextStyle kFilterStyle = TextStyle(
  color: Color(MyColors.bg02),
  fontWeight: FontWeight.w500,
);

class MyColors {
  static int header01 = 0xff151a56;
  static int primary = 0xff575de3;
  static int purple01 = 0xff918fa5;
  static int purple02 = 0xff6b6e97;
  static int yellow01 = 0xffeaa63b;
  static int yellow02 = 0xfff29b2b;
  static int bg = 0xfff5f3fe;
  static int bg01 = 0xff6f75e1;
  static int bg02 = 0xffc3c5f8;
  static int bg03 = 0xffe8eafe;
  static int text01 = 0xffbec2fc;
  static int grey01 = 0xffe9ebf0;
  static int grey02 = 0xff9796af;
}
