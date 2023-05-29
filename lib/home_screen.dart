import 'package:flutter/material.dart';
import 'package:new_design/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'doctor_section.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: pColor,
      size: 30.0,
    ),
    Icon(
      MdiIcons.heart,
      color: pColor,
      size: 30.0,
    ),
    Icon(
      MdiIcons.eye,
      color: pColor,
      size: 30.0,
    ),
    Icon(
      MdiIcons.brain,
      color: pColor,
      size: 30.0,
    ),
    Icon(
      MdiIcons.earHearing,
      color: pColor,
      size: 30.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffd9e4ee),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [pColor.withOpacity(0.8), pColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage("images/doctor1.jpg"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: wColor,
                              size: 30.0,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Hello Patients',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: wColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'Your health is our\nfirst priority',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: wColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0, bottom: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 55.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: wColor,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: sdColor,
                                blurRadius: 6.0,
                                spreadRadius: 3.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Here...",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Catagories",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                        color: bColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 100.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catIcons.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xfff2f8ff),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: sdColor,
                                      blurRadius: 5.0,
                                      spreadRadius: 2.0),
                                ],
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              catNames[index],
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Recommended Doctors ",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.7)),
                    ),
                  ),
                  DoctorSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
