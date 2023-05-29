import 'package:flutter/material.dart';
import 'package:new_design/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/doctor1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    pColor.withOpacity(0.0),
                    pColor.withOpacity(0.0),
                    pColor
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              height: 45.0,
                              width: 45.0,
                              decoration: BoxDecoration(
                                color: Color(0xfff2f8ff),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: pColor,
                                      blurRadius: 4,
                                      spreadRadius: 2),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  color: pColor,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                              color: Color(0xfff2f8ff),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: pColor,
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outlined,
                                color: pColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Patients",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "8.k",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Experience",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "10yrs",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: wColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr Prabesh Bhattarai',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: pColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.heartPlus,
                        color: Colors.red,
                        size: 28.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Surgeon',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: bColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.'),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Text(
                      "Book Date",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 70.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 5.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: index == 1 ? pColor : Color(0xfff2f8ff),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: sdColor,
                                  blurRadius: 4.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${index + 8}",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: index == 1
                                        ? wColor
                                        : bColor.withOpacity(0.6),
                                  ),
                                ),
                                Text(
                                  "Dec",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                    color: index == 1
                                        ? wColor
                                        : bColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Text(
                      "Book Time",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: index == 2 ? pColor : Color(0xfff2f8ff),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: sdColor,
                                blurRadius: 4.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${index + 8}:00 AM",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  color: index == 2
                                      ? wColor
                                      : bColor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    color: pColor,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Boook Appointment",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: wColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
