import 'package:flutter/material.dart';
import 'package:foodiapp/config/colors.dart';

enum SigninCharacter { fill, outline }

class Product_Overview extends StatelessWidget {
  final String productName;
  final String productImage;

  Product_Overview({required this.productImage, required this.productName});

  Widget bottomNavigationBar(
      {required Color background,
      required Color iconColor,
      required Color color,
      required String title,
      required IconData iconData}) {
    return Expanded(
      child: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(iconData, size: 17, color: iconColor),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SigninCharacter? _character = SigninCharacter.fill;
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
              background: textColor,
              iconColor: Colors.grey,
              color: Colors.white70,
              title: "Add To Wishlist",
              iconData: Icons.favorite_outline),
          bottomNavigationBar(
              background: primaryColor,
              iconColor: Colors.white70,
              color: textColor,
              title: "Go To Cart",
              iconData: Icons.shop_outlined),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product OverView",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(productName),
                    subtitle: Text("\$4"),
                  ),
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(40),
                    child: Image.asset(productImage),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text(
                      "Avaliable Options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              groupValue: _character,
                              value: SigninCharacter.fill,
                              activeColor: Colors.green[700],
                              onChanged: (value) {
                                // setState(() {
                                //  _character = value as SigninCharacter?;
                              },
                            )
                          ],
                        ),
                        Text("\$50"),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 17,
                                  color: primaryColor,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(color: primaryColor),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About This Product",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "A patty burger is a flattened, usually round, serving of ground meat and legumes, grains, vegetables, or meat alternatives. Patties are found in multiple cuisines throughout the world")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
