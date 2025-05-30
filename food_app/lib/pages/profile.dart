import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông Tin Của Bạn Nè...<3'),
        backgroundColor: Colors.redAccent,
      ),
      // body: Center(
      //   child: Text(
      //     'Welcome to your profile!',
      //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      //   ),
      // ),
    );
  }
}
