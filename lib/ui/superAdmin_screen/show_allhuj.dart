
import 'package:al_haj/ui/superAdmin_screen/items_admin.dart';
import 'package:flutter/material.dart';
import 'package:al_haj/models/data_allhuj.dart';
import 'all_huj.dart';



class showAllhuj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'كل الحجاج',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.teal,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset("assets/icons/logo.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            allHuj(dataAllHuj:u11),
            allHuj(dataAllHuj:u22),
            allHuj(dataAllHuj:u33),
          ],
        ),
      ),
    );
  }
}
