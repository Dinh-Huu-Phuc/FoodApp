import 'package:flutter/material.dart';
import 'package:food_app/services/widget_support.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:40.0, left: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap:(){
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xffef2b39),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/pizza1.png',
                height: MediaQuery.of(context).size.height/3,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              "Tần Thủy Hoàng Pizza",
              style: AppWidget.HeadlineTextFeildStyle(),
            ),
            Text(
              "\$50",
              style: AppWidget.priceTextFeildStyle(),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Text("Tần Thủy Hoàng Pizza là một món ăn ngon, hấp dẫn với hương vị đặc trưng của pizza truyền thống. Được làm từ những nguyên liệu tươi ngon nhất, bánh pizza này mang đến trải nghiệm ẩm thực tuyệt vời cho người thưởng thức.",
                style: AppWidget.SimpleTextFeildStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}