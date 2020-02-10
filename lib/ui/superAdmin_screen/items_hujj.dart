import 'package:al_haj/models/data_allhuj.dart';
import 'package:flutter/material.dart';
import '../../fade_page_route.dart';

class itemsOfhuj extends StatelessWidget {
  final DataAllHuj dataAllHuj;

  const itemsOfhuj({
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


            ),

          ],
        ),
      ),
    );
  }
}
