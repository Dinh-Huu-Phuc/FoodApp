import 'package:flutter/material.dart';
import 'package:food_app/services/widget_support.dart';

class Onbaording extends StatefulWidget {
  const Onbaording({super.key});

  @override
  State<Onbaording> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onbaording>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset(
              'assets/images/onboard.png',
            ),
            SizedBox(height: 20.0,),
            Text(
              "The Fastest\nFood Delivery", 
              textAlign: TextAlign.center,
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            SizedBox(height: 20.0,),
            Text("Craving something delicious?\n Order now and get your food \ndelivered in no time!.",
            textAlign: TextAlign.center,
            style: AppWidget.SimpleTextFeildStyle(),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                color: Color(0xff8c592a),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "Get Started", 
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    )
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}