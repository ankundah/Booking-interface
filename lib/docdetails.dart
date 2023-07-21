import 'package:flutter/material.dart';
import 'package:ataraxis/schedule.dart';


class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Doctor Details'),
            backgroundColor: Colors.blue,
            expandedHeight: 200,
          ),
          SliverToBoxAdapter(
            child: DetailBody(),
          )
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DetailDoctorCard(),
          SizedBox(
            height: 15,
          ),
          DoctorInfo(),
          SizedBox(
            height: 30,
          ),
          Text(
            'About Doctor',
            style: kTitleStyle,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Dr. Joshua Simorangkir is a specialist in internal medicine who specialized blah blah and blah for 100 years and is still going. blah blah has been his passion for a long time. Trust Him hehehe',
            style: TextStyle(
              color: Color(MyColors.purple01),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color(MyColors.blue),
              ),
            ),
            child: Text('Book Appointment'), // takes you to payment system
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        NumberCard(
          label: 'Patients',
          value: '100+',
        ),
        SizedBox(width: 15),
        NumberCard(
          label: 'Experience',
          value: '10 years',
        ),
        SizedBox(width: 15),
        NumberCard(
          label: 'Rating',
          value: '3.8',
        ),
      ],
    );
  }
}

class AboutDoctor extends StatelessWidget {
  final String title;
  final String desc;
  const AboutDoctor({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NumberCard extends StatelessWidget {
  final String label;
  final String value;

  const NumberCard({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(MyColors.bg03),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: Color(MyColors.grey02),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              value,
              style: TextStyle(
                color: Color(MyColors.header01),
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class DetailDoctorCard extends StatelessWidget {
//   final String? doctorName;
//   final String? sessionTitle;
//   final String? imagePath;
//
//   const DetailDoctorCard({
//     Key? key,
//     this.doctorName,
//     this.sessionTitle,
//     this.imagePath,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         child: Container(
//           padding: EdgeInsets.all(15),
//           width: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       doctorName ?? 'Dr. Thia Kundah',
//                       style: TextStyle(
//                         color: Color(MyColors.header01),
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       sessionTitle ?? 'Couples Therapy',
//                       style: TextStyle(
//                         color: Color(MyColors.grey02),
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Image(
//                 image: AssetImage(imagePath ?? 'assets/doctor01.jpeg'),
//                 width: 100,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class DetailDoctorCard extends StatelessWidget {
  const DetailDoctorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Josua Simorangkir',
                      style: TextStyle(
                          color: Color(MyColors.header01),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Psychiatrist',
                      style: TextStyle(
                        color: Color(MyColors.grey02),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/doctor01.jpeg'),
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}