import 'package:flutter/material.dart';
import 'package:foodiapp/config/colors.dart';
import 'package:foodiapp/screens/home_screen/Drawer_side.dart';
import 'package:foodiapp/screens/home_screen/single_product.dart';
import 'package:foodiapp/screens/product_overview/Product_overview.dart';
import 'package:foodiapp/screens/search/search.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: primaryColor,
              child: Icon(
                Icons.shop,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        backgroundColor: Color(0xffd1ad17),
      ),
      drawer: DrawerSide(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ScaffoldBackgroundColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/home.jpg"),
                ),
              ),
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 130,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              height: 50,
                              width: 100,
                              child: Center(
                                child: Text(
                                  "Foodie",
                                  style:
                                      TextStyle(color: Colors.white, shadows: [
                                    BoxShadow(
                                      color: Colors.green,
                                      blurRadius: 10,
                                      offset: Offset(3, 3),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "30% Off",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "On all Fast food products",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Burgers",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "view more",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Product_Overview(
                              productName: "Ham Burger",
                              productImage: "assets/1.png",
                            ),
                          ),
                        );
                      },
                      productImage: "assets/1.png",
                      productName: "Ham Burger"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/2.png",
                      productName: "Patti Burger"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/3.png",
                      productName: "Double Cheese Burger"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/4.png",
                      productName: "Chicken Burger"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pizza's",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "view more",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/lasania.png",
                      productName: "Lasania"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/Pepperoni.png",
                      productName: "Pepperoni"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/Slice.png",
                      productName: "Chicken Tikka"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/Cheese.png",
                      productName: "Cheese"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Krispy Chicken",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "view more",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/drum.png",
                      productName: "Chicken Drumstick"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/nuggets.png",
                      productName: "Chicken Nuggets"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/wings.png",
                      productName: "Chicken Wings"),
                  SingleProduct(
                      onTap: () {},
                      productImage: "assets/krispy.png",
                      productName: "Krispy Chicken"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
