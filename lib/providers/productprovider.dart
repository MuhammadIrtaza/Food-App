import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/scheduler.dart';
import 'package:foodiapp/model/productmodel.dart';

class product_provider with ChangeNotifier {
  List<product_provider> BurgerProductList = [];
  Product_Model productModel;

  fatchBurgerProductdata() async {
    QuerySnapshot value = await FirebaseFirestore.instance
        .collection("fatchBurgerProductdata")
        .get();
    value.docs.forEach((element) {
      print(element.data());
    });
  }
}
