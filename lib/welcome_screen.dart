import 'package:flutter/material.dart';
import 'package:new_design/colors.dart';
import 'package:new_design/home_screen.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [pColor.withOpacity(0.8), pColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Image.asset('images/doctors.png'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Doctor online",
              style: TextStyle(
                  fontSize: 40.0, color: wColor, fontWeight: FontWeight.bold),
            ),
            Text(
              'Appoint Your Doctor',
              style: TextStyle(fontSize: 20.0, color: wColor),
            ),
            SizedBox(
              height: 80.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homeScreen(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  child: Text(
                    'Lets Go',
                    style: TextStyle(
                        color: pColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Image.asset(
              "images/lined heart.png",
              color: wColor,
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
