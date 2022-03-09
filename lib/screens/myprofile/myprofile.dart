import 'package:flutter/material.dart';
import 'package:foodiapp/config/colors.dart';
import 'package:foodiapp/screens/home_screen/Drawer_side.dart';

class MyProfile extends StatelessWidget {
  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: primaryColor,
        elevation: 0.0,
        title: Text(
          'My Profile',
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 564,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: ScaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 30),
                          height: 80,
                          width: 280,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Muhammad Irtaza',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "nadeemirtaza75@gmail.com",
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  )
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: primaryColor,
                                radius: 15,
                                child: CircleAvatar(
                                  backgroundColor: ScaffoldBackgroundColor,
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    size: 15,
                                    color: textColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: "My Order",
                    ),
                    listTile(
                      icon: Icons.location_on_outlined,
                      title: "My Delivery Address",
                    ),
                    listTile(
                      icon: Icons.person_outlined,
                      title: "Refer a Friend ",
                    ),
                    listTile(
                      icon: Icons.file_copy_outlined,
                      title: "Terms & Conditions",
                    ),
                    listTile(
                      icon: Icons.policy_outlined,
                      title: "Privacy Policy",
                    ),
                    listTile(
                      icon: Icons.add_chart,
                      title: "About",
                    ),
                    listTile(
                      icon: Icons.exit_to_app_outlined,
                      title: "Log Out",
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 50,
              child: CircleAvatar(
                backgroundColor: ScaffoldBackgroundColor,
                backgroundImage: AssetImage("assets/ff.png"),
                radius: 45,
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerSide(),
    );
  }
}
