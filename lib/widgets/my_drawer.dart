import 'package:flutter/material.dart';
import 'package:ignite_earning/const/iconPath.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName: Text(
                "Mehedi Hasan",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "mehedi@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: ClipOval(
                child: FlutterLogo(),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image.asset(MyIcons.balance),
              title: Text("Balance 100 points"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(MyIcons.withdraw),
              title: Text("Withdraw"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(MyIcons.history),
              title: Text("Withdraw History"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(MyIcons.facebook),
              title: Text("Join with us"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(MyIcons.logout),
              title: Text("LogOut"),
              onTap: () {},
            ),      
          ],
        ),
      )),
    );
  }
}
