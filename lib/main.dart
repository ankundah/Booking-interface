import 'package:flutter/material.dart';
import 'package:ataraxis/schedule.dart';
import 'package:ataraxis/home.dart';
import 'package:ataraxis/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ataraxis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabbedViewClass(),
    );
  }
}

class TabbedViewClass extends StatefulWidget {
  const TabbedViewClass({Key? key}) : super(key: key);

  @override
  State<TabbedViewClass> createState() => _TabbedViewClassState();
}

class _TabbedViewClassState extends State<TabbedViewClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ataraxis"),
          bottom: TabBar(
            tabs: [Tab(text: "Home"), Tab(text: "Sessions"), Tab(text: "Profile")],
          ),
        ),
         body: TabBarView(
           children: [AssessmentForm(), ScheduleTab(), ProfilePage()],
         ),
      ),
    );
  }
}