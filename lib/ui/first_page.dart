import 'package:al_haj/models/data.dart';
import 'package:al_haj/ui/boutton_first_page.dart';
import 'package:flutter/material.dart';

import 'login/loginscreen_admin.dart';
import 'login/loginscreen_owner.dart';
import 'login/loginscreen_superadmin.dart';
import 'login/loginscreen_user.dart';

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/back.JPG"), fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: SizedBox(
                    height: 200,
                    child: Image.asset("assets/icons/logo.png"))),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      bouttonFirstPage(typeofaction: LoginScreenOwner(),),
                      bouttonFirstPage(typeofaction: LoginScreenSuperAdmin(),),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:40.0),
                        child: Text(
                          owner.localname.toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          superAdmin.localname.toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      bouttonFirstPage(typeofaction: LoginScreenAdmin(),),
                      bouttonFirstPage(typeofaction: LoginScreenUser(),),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:30.0),
                        child: Text(
                          admin.localname.toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          user.localname.toString(),
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
