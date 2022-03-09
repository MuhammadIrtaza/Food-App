import 'package:flutter/material.dart';
import 'package:foodiapp/screens/myprofile/myprofile.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd6b738),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/ff.png"),
                      backgroundColor: Colors.yellow,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Guest",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: "Home", onTap: () {}),
            listTile(
                icon: Icons.shop_outlined, title: "Review Cart", onTap: () {}),
            listTile(
                icon: Icons.person_outline,
                title: "My Profile",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }),
            listTile(
                icon: Icons.notifications_outlined,
                title: "Notification",
                onTap: () {}),
            listTile(
                icon: Icons.star_outline,
                title: "Rating and Review",
                onTap: () {}),
            listTile(
                icon: Icons.favorite_outline, title: "Wishlist", onTap: () {}),
            listTile(
                icon: Icons.copy_outlined,
                title: "Raise a Complaint",
                onTap: () {}),
            listTile(
                icon: Icons.format_quote_outlined, title: "FAQs", onTap: () {}),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Support",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Call us:"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "+923208414725",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text("Mail us:"),
                            SizedBox(width: 10),
                            Text(
                              "nadeemirtaza75@gmail.com",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
