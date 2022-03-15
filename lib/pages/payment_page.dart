import 'package:flutter/material.dart';
import 'package:payment_integration/components/colors.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 80, right: 20),
        height: h,
        width: w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/paymentbackground.png'),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: h * 0.14,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/success.png'),
                ),
              ),
            ),
            Text(
              'Success !',
              style: TextStyle(
                  fontSize: 30,
                  color: AppColor.mainColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Payment is completed for 2 bills',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: h * 0.045,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 2, color: Colors.grey.withOpacity(0.5)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 20, bottom: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons.done,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'KenGen Power',
                            style: TextStyle(
                                color: AppColor.mainColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('ID:7389601585',
                              style: TextStyle(
                                  color: AppColor.idColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: const [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$1907.00',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
