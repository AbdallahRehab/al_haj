import 'package:al_haj/models/dataAdmin.dart';
import 'package:al_haj/models/data_allhuj.dart';
import 'package:al_haj/ui/superAdmin_screen/items_hujj.dart';
import 'package:flutter/material.dart';

import 'button_add_hujj.dart';




class singleAdmin_addUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الحجاج الخاصين بك',
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
          ),


        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buttonAddHuj(),
            itemsOfhuj(dataAllHuj: u11,),
            itemsOfhuj(dataAllHuj:u22),
            itemsOfhuj(dataAllHuj:u33),
          ],
        ),
      ),
    );
  }
}
