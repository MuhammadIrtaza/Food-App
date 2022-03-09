import 'package:flutter/material.dart';
import 'package:foodiapp/config/colors.dart';
import 'package:foodiapp/screens/home_screen/Drawer_side.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: primaryColor,
        title: Text(
          "Search",
          style: TextStyle(color: textColor),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  hintText: "Search for the items in the store",
                  suffixIcon: Icon(Icons.search),
                  fillColor: Color(0xffc2c2c2),
                  filled: true),
            ),
          ),
        ],
      ),
      drawer: DrawerSide(),
    );
  }
}
