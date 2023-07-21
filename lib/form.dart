import 'package:flutter/material.dart';

class AssessmentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Assessment Form",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Your First step to getting help",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 30),
                          makeInput(label: "Full Names:"),
                          makeInput(label: "Nicknames:"),
                          makeInput(label: "Contact:"),
                          makeInput(label: "Date of Birth"),
                          makeInput(label: "Address:"), //text
                          makeInput(label: "Email:"), // email format
                          makeInput(label: "A Parent/Guardian Contact(if below 18years):"), //numbers with country codes
                          makeInput(label: "How did you find us?:"), //text
                          makeInput(label: "Marital Status?:"), //Options; single, married, divorced, separated, cohabiting
                          makeInput(label: "Number Of Children, If any?:"), //number
                          makeInput(label: "May Ataraxis call/text?:"), //yes or no value
                          makeInput(label: "May Ataraxis Email you?:"), //yes or no value
                          makeInput(label: "Next of Kin Contact?:"), //numbers with country codes
                          makeInput(label: "Medications currently taking?:"), //text field
                          makeInput(label: "Psychiatric medications taken in the past?:"), //text field
                          makeInput(label: "Psychiatric/psychotherapy services you're currently undergoing:"), //text field
                          makeInput(label: "Currently Employed?:"), //yes or no
                          makeInput(label: "Current Position?:"), //text field
                          makeInput(label: "Any Employment Stressors?:"), //yes or no
                          makeInput(label: "Any family member with Psychiatric problems?:"), //yes or no
                          makeInput(label: "If yes, Please give details:"), // text field
                          makeInput(label: "Any health concerns?:"), //Text field
                          makeInput(label: "How would you rate your mental health?:"), //Options; satisfactory, undatisfactory, good,excellent, not sure
                          makeInput(label: "Any sleep problems:"), //yes or no
                          makeInput(label: "How often do you exercise:"), // Options; often, rarely, daily
                          makeInput(label: "Any Eating Habits?:"), //yes or no
                          makeInput(label: "Give details if any:"), //Text field
                          makeInput(label: "Do you drink alcohol?:"), //yes or no
                          makeInput(label: "If yes, how often?:"), //Options; occasionally, weekends, 3times a week, daily
                          makeInput(label: "Do you use recreational drugs?:"), //yes or no
                          makeInput(label: "If yes, what type and how often?:"), //text field
                          makeInput(label: "Any significant life stressors in the past year?:"), //yes or no
                          makeInput(label: "If yes, Please give details:"), //text field
                          makeInput(label: "Did Filling out this form bother you?:"),

                          SizedBox(height: 30),
                          Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {},
                              color: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                "Publish",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Your form will be sent to your chosen specialist."),
                              Text(
                                "I Agree",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[400] ?? Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400] ?? Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}



// [
    // makeInput(label: "Full Names:"), //text
    // makeInput(label: "Nicknames:"),
    // makeInput(label: "Contact:"), //numbers with country codes
    // makeInput(label: "Date of Birth"), //calender
    // makeInput(label: "Address:"), //text
    // makeInput(label: "Email:"), // email format
    // makeInput(label: "A Parent/Guardian Contact(if below 18years):"), //numbers with country codes
    // makeInput(label: "How did you find us?:"), //text
    // makeInput(label: "Marital Status?:"), //Options; single, married, divorced, separated, cohabiting
    // makeInput(label: "Number Of Children, If any?:"), //number
    // makeInput(label: "May Ataraxis call/text?:"), //yes or no value
    // makeInput(label: "May Ataraxis Email you?:"), //yes or no value
    // makeInput(label: "Next of Kin Contact?:"), //numbers with country codes
    // makeInput(label: "Medications currently taking?:"), //text field
    // makeInput(label: "Psychiatric medications taken in the past?:"), //text field
    // makeInput(label: "Psychiatric/psychotherapy services you're currently undergoing:"), //text field
    // makeInput(label: "Currently Employed?:"), //yes or no
    // makeInput(label: "Current Position?:"), //text field
    // makeInput(label: "Any Employment Stressors?:"), //yes or no
    // makeInput(label: "Any family member with Psychiatric problems?:"), //yes or no
    // makeInput(label: "If yes, Please give details:"), // text field
    // makeInput(label: "Any health concerns?:"), //Text field
    // makeInput(label: "How would you rate your mental health?:"), //Options; satisfactory, undatisfactory, good,excellent, not sure
    // makeInput(label: "Any sleep problems:"), //yes or no
    // makeInput(label: "How often do you exercise:"), // Options; often, rarely, daily
    // makeInput(label: "Any Eating Habits?:"), //yes or no
    // makeInput(label: "Give details if any:"), //Text field
    // makeInput(label: "Do you drink alcohol?:"), //yes or no
    // makeInput(label: "If yes, how often?:"), //Options; occasionally, weekends, 3times a week, daily
    // makeInput(label: "Do you use recreational drugs?:"), //yes or no
    // makeInput(label: "If yes, what type and how often?:"), //text field
    // makeInput(label: "Any significant life stressors in the past year?:"), //yes or no
    // makeInput(label: "If yes, Please give details:"), //text field
    // makeInput(label: "Did Filling out this form bother you?:"),
    // ],