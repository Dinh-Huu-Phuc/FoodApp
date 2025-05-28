import 'package:flutter/material.dart';
import 'package:food_app/model/category_model.dart';
import 'package:food_app/services/category_data.dart';
import 'package:food_app/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<CategoryModel> categories = [];

@override
  void initState() {
    categories = getCategories();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 50, 
                      width: 110,
                      fit: BoxFit.contain,
                    ),
                    Text("Order your favorite food!",
                    style: AppWidget.SimpleTextFeildStyle(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/girl.png',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffececf8),
                      borderRadius: BorderRadius.circular(10.0) 
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search ..."
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xffef2b39),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    Icons.search, 
                    color: Colors.white,
                    size: 30.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount:categories.length,
                itemBuilder: (context, index){
                return CategoryTile(name: categories[index].name!, image: categories[index].image!);
              }),
            )
          ],
        ),
      ),
    );
  }
}


class CategoryTile extends StatefulWidget {
  String name, image;
  CategoryTile({required this.name, required this.image});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Color(0xffef2b39),
      ),
      child: Row(
        children: [
          Image.asset(widget.image, 
          height: 50,
          fit: BoxFit.cover,
        ),
        Text(
          widget.name,
          style: AppWidget.whiteTextFeildStyle(),
        ),
        ],
      ),
    );
  }
}