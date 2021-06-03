import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ignite_earning/const/colors.dart';
import 'package:ignite_earning/widgets/customBackButton.dart';
import 'package:ignite_earning/widgets/customButton.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 5),
                      ),
                    ),
                    SizedBox(height:15),
                    Container(
                      height: 190,
                      width: 280,
                      child: Image.asset(
                        "assets/img2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone_android),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter your mobile number",
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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
                            print("singup Button pressed"); 
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Already Have an Account ?',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xbf000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.toNamed("/loginPage");
                        Get.offNamed("/loginPage");
                      },
                      child: Text(
                        'Login Now',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
          //BackButton on Stack
          customBackButton(onPressed: (){
            Get.back();
          }),
          
        ]),
      ),
    );
  }
}
