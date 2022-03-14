import 'package:flutter/material.dart';
import 'package:payment_integration/components/colors.dart';
import 'package:payment_integration/widget/text_size.dart';

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
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            _headSection(),
            _curveImageContainer(),
            _buttonContainer(),
            _listBill(),
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
        top: 220,
        // bottom: 50,
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
      bottom: 495,
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

  _listBill() {
    return Positioned(
      top: 320,
      right: 0,
      left: 0,
      bottom: 0,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                margin: EdgeInsets.only(top: 20),
                height: 130,
                width: MediaQuery.of(context).size.width - 18,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          offset: Offset(1, 1),
                          color: Color(0xffd8dbe0),
                          spreadRadius: 10)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 18, top: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/brand1.png')),
                                  border:
                                      Border.all(width: 3, color: Colors.grey)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('KenGen Power',
                                    style: TextStyle(
                                        color: AppColor.mainColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                                Text('ID:7389601585',
                                    style: TextStyle(
                                        color: AppColor.idColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ],
                        ),
                        const SizedText(
                            text: 'Auto pay on 19th June 21',
                            color: Colors.green),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColor.selectBackground),
                              child: Center(
                                child: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColor.selectColor),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              '\$1907.00',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.mainColor,
                                  fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              'Due in 7 days',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF6f7c8b),
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                              color: AppColor.halfOval,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
