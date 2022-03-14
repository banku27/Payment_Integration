import 'package:flutter/material.dart';
import 'package:payment_integration/components/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    // print(h);
    // print(w);

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        child: Stack(
          children: [
            _headSection(),
            _curveImageContainer(),
            _buttonContainer(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      // color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fitHeight)),
            ),
          ),
        ],
      ),
    );
  }

  _curveImageContainer() {
    return Container(
      child: Positioned(
        left: 0,
        right: -2,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/curve.png'), fit: BoxFit.cover)),
        ),
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 5,
      right: 43,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/lines.png')),
            boxShadow: [
              BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 1),
                  color: Color(0xff11324d).withOpacity(0.2))
            ]),
      ),
    );
  }
}
