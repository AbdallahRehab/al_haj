import 'package:al_haj/models/dataAdmin.dart';
import 'package:al_haj/ui/superAdmin_screen/show_allhuj.dart';
import 'package:flutter/material.dart';
import '../../fade_page_route.dart';
import 'bodymessage.dart';

class buttonMessageAllHuj extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,

          FadePageRoute(
            widget:bodyMessage() ,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        color: Colors.white30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all( 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),Expanded(
              child: Padding(
                padding: const EdgeInsets.all( 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "ارسل رساله لكل الحجاج",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
