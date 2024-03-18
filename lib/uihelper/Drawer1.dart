import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Mukul Prajapati'),
              accountEmail: Text('mukulp150@gmail.com'),

            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/MukulPrajapati.jpg'),
              ),
            ),
          ),
        ],

      ),
    );
  }
}
