import 'package:flutter/material.dart';
import 'package:ignite_earning/widgets/my_drawer.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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

