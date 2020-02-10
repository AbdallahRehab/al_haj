import 'package:al_haj/models/dataAdmin.dart';
import 'package:al_haj/models/data_allhuj.dart';
import 'package:flutter/material.dart';
import '../../fade_page_route.dart';

class allHuj extends StatelessWidget {
  final DataAllHuj dataAllHuj;

  const allHuj({
    Key key,
    this.dataAllHuj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        color: dataAllHuj.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Hero(
                tag: dataAllHuj.name,
                child: Image.asset(dataAllHuj.imagePath),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      dataAllHuj.name,
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

              /*Stack(
                children: <Widget>[
                  Positioned(
                    bottom:-50,
                    top: 50,
                    child: Transform.rotate(
                        angle: -0.2,
                        child: ),
                  ),

                ],
              ),*/
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 22,
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
