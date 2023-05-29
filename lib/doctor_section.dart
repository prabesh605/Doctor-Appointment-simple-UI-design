import 'package:flutter/material.dart';

import 'appointment_screen.dart';
import 'colors.dart';

class DoctorSection extends StatelessWidget {
  const DoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffd9e4ee),
      child: Container(
        height: 340.0,
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                  height: 300.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f8ff),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: sdColor,
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AppointmentScreen(),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                'images/doctor${index + 1}.jpg',
                                height: 200.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xfff2f8ff),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: sdColor,
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: pColor,
                                  size: 26.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Dr Prabesh Bhattarai',
                              style: TextStyle(color: pColor, fontSize: 18.0),
                            ),
                            Text(
                              "Surgeon",
                              style: TextStyle(fontSize: 18.0, color: pColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text("9.8"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
