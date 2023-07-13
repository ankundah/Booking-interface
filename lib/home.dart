import 'package:flutter/material.dart';

class AssessmentForm extends StatefulWidget {
  @override
  _AssessmentFormState createState() =>
      _AssessmentFormState();
}

class _AssessmentFormState
    extends State<AssessmentForm> {
  // Define variables to store the assessment answers
  int? _question1Answer;
  int? _question2Answer;
  int? _question3Answer;

  // Define options for each question
  List<String> _question1Options = [
    'Not at all',
    'Several days',
    'More than half the days',
    'Nearly every day',
  ];

  List<String> _question2Options = [
    'Not difficult at all',
    'Somewhat difficult',
    'Very difficult',
    'Extremely difficult',
  ];

  List<String> _question3Options = [
    'Not true at all',
    'Rarely true',
    'Sometimes true',
    'Often true',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Assessment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question 1:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<int>(
              value: _question1Answer,
              items: _question1Options
                  .asMap()
                  .map((index, option) {
                return MapEntry(
                  index,
                  DropdownMenuItem<int>(
                    value: index,
                    child: Text(option),
                  ),
                );
              })
                  .values
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _question1Answer = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'How often have you been bothered by feeling down, depressed, or hopeless?',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Question 2:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<int>(
              value: _question2Answer,
              items: _question2Options
                  .asMap()
                  .map((index, option) {
                return MapEntry(
                  index,
                  DropdownMenuItem<int>(
                    value: index,
                    child: Text(option),
                  ),
                );
              })
                  .values
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _question2Answer = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'How difficult have you found it to relax?',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Question 3:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<int>(
              value: _question3Answer,
              items: _question3Options
                  .asMap()
                  .map((index, option) {
                return MapEntry(
                  index,
                  DropdownMenuItem<int>(
                    value: index,
                    child: Text(option),
                  ),
                );
              })
                  .values
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _question3Answer = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'How often have you felt down-hearted or low?',
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Process the assessment answers
                  // You can store them in a database or perform any other action
                  print('Question 1 Answer: $_question1Answer');
                  print('Question 2 Answer: $_question2Answer');
                  print('Question 3 Answer: $_question3Answer');
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AssessmentForm(),
  ));
}
