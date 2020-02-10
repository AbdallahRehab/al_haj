import 'package:al_haj/ui/Admin/allhuj_have_him.dart';
import 'package:al_haj/ui/first_page.dart';
import 'package:al_haj/ui/login/loginscreen_admin.dart';
import 'package:al_haj/ui/login/loginscreen_superadmin.dart';
import 'package:al_haj/ui/login/loginscreen_user.dart';
import 'package:al_haj/ui/owner_screen/create_S_Admin.dart';
import 'package:al_haj/ui/signup/signup_screen1.dart';
import 'package:al_haj/ui/signup/signup_screen2.dart';
import 'package:al_haj/ui/signup/signup_screen3.dart';
import 'package:al_haj/ui/superAdmin_screen/create_Admin.dart';
import 'package:al_haj/ui/superAdmin_screen/show_allAdmin.dart';
import 'package:al_haj/ui/superAdmin_screen/show_allhuj.dart';
import 'package:al_haj/ui/superAdmin_screen/singleadmin_addusers.dart';
import 'package:al_haj/ui/user/frame_fristuser.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'OpenSans',
          scaffoldBackgroundColor: Colors.teal,

          primaryColor: Colors.white,
        ),

      home:      firstPage(),
    );
  }
}
