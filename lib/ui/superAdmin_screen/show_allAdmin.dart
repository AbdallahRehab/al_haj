import 'package:al_haj/models/dataAdmin.dart';
import 'package:al_haj/ui/superAdmin_screen/items_admin.dart';
import 'package:flutter/material.dart';



class showAllAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'كل المشرفين',
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
            itemsOfAdmin(dataAdmin:u1),
            itemsOfAdmin(dataAdmin:u2),
            itemsOfAdmin(dataAdmin:u3),
          ],
        ),
      ),
    );
  }
}
