import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đặt Món Bạn Ơi...<3'),
        backgroundColor: Colors.redAccent,
      ),
      // body: Center(
      //   child: Text(
      //     'You have no orders yet!',
      //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      //   ),
      // ),
    );
  }
}
