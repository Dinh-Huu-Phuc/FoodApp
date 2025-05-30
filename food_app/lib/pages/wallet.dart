import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đây Là Ví Của Bạn'),
        backgroundColor: Colors.redAccent,
      ),
      // body: Center(
      //   child: Text(
      //     'Your balance: \$0.00',
      //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      //   ),
      // ),
    );
  }
}
