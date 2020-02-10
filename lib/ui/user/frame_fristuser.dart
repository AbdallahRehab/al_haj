import 'package:al_haj/models/dataAdminfollowuser.dart';
import 'package:al_haj/models/data_single_huj.dart';
import 'package:flutter/material.dart';

import '../../fade_page_route.dart';
import 'Guide.dart';


class framefirstUser extends StatelessWidget {
  final dataAdminfollowuser adminfollowuser;

  const framefirstUser({
    Key key,
    this.adminfollowuser,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Login With Admin'),
        title: Text("الصفحه الرائسيه",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
            )),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.teal,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Theme.of(context).scaffoldBackgroundColor,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(child: SizedBox(
                  height: 200,
                  child: Image.asset("assets/icons/logo.png"))),
              SizedBox(
                height: 20,
              ),
              Text("اسم المشرف : \t ${adminfollowuser.name}",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Phone : \t  0121045651",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),

              SizedBox(
                height: 20,
              ),


              SizedBox(
                height: 40,
              ),


              FlatButton(
                child: Text(
                  'Make Problem',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                textColor: Colors.white,
                onPressed: () {


                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                child: Text(
                  'ارشادات',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(15),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,

                    FadePageRoute(
                      widget: frameGuide(),
                    ),
                  );

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
