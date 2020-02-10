import 'package:al_haj/models/data_single_huj.dart';
import 'package:flutter/material.dart';

import '../../fade_page_route.dart';
import 'bodymessagesinglehuj.dart';

class frameAboutHuj extends StatelessWidget {
  final DatasingleHuj datasingleHuj;

  const frameAboutHuj({
    Key key,
    this.datasingleHuj,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Login With Admin'),
        title: Text("بيانات الحاج",
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
              Text("Name : \t ${datasingleHuj.name}",
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
              Text("Sex : \t  Male",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),

              SizedBox(
                height: 20,
              ),
              Text("Blood : \t  O+",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),

              SizedBox(
                height: 20,
              ),
              Text("Age : \t  55",

                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  )),

              SizedBox(
                height: 20,
              ),
              FlatButton(
                child: Text(
                  'Send Message',
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
                      widget:bodyMessageSingleHuj() ,
                    ),
                  );

                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                child: Text(
                  'Location',
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
            ],
          ),
        ),
      ),
    );
  }
}
