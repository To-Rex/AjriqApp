import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEEEEE),
          elevation: 0,
          centerTitle: true,
          title: SvgPicture.asset(
            'assets/svgImages/logo.svg',
            width: w * 0.3,
            height: h * 0.05,
          ),
        ),
        body: Column(
          children: [
            //text Save time and money with us
            Padding(
              padding: EdgeInsets.only(
                  top: h * 0.13, left: w * 0.05, right: w * 0.15),
              child: Text(
                'Save time and money with us. witness it yourself.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //google and apple sign in buttons
            Container(
              width: w * 0.9,
              height: h * 0.06,
              margin: EdgeInsets.only(top: h * 0.1),
              padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  minimumSize: Size(w * 0.9, h * 0.07),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgImages/google.svg',
                      height: h * 0.03,
                    ),
                    SizedBox(width: w * 0.05),
                    const Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: w * 0.9,
              height: h * 0.06,
              margin: EdgeInsets.only(top: h * 0.02),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  minimumSize: Size(w * 0.9, h * 0.07),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgImages/apple.svg',
                    ),
                    SizedBox(width: w * 0.05),
                    const Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
