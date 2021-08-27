import 'package:flutter/material.dart';
import 'package:ignite_earning/const/iconPath.dart';
import 'package:ignite_earning/widgets/my_drawer.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Image.asset(MyIcons.balance),
              SizedBox(width: 10),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "100",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('This is DashBoard '),
        ),
      ),
    );
  }
}
