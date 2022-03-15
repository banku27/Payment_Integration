import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_integration/pages/payment_page.dart';

class Auth {
  void login(BuildContext ctx) {
    Future.delayed(Duration(seconds: 4));
    Navigator.push(
        ctx, MaterialPageRoute(builder: ((context) => PaymentPage())));
  }

  void logOut(BuildContext context) {
    Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pop();
  }
}
