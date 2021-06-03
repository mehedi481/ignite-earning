import 'package:flutter/material.dart';
import 'package:ignite_earning/const/colors.dart';
import 'package:ignite_earning/const/icons.dart';
import 'package:ignite_earning/widgets/customButton.dart';
import 'package:get/get.dart';



class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 290,
                    child: Image.asset(
                      MyIcons.img1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      fontSize: 22,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Join Us Now And Earn\nFree Credit With Mobile\nRecharge\n',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xbf000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: customButton(
                          textColor: Colors.black,
                          buttonTitle: "Login",
                          onPressed: () {
                            Get.toNamed("/loginPage");
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: customButton(
                        buttonTitle: "Create Account",
                        backgroundColor: Color(buttonColorBlack),
                        textColor: Colors.white,
                        onPressed: () {
                         Get.toNamed("/signUpPage");
                        },
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
