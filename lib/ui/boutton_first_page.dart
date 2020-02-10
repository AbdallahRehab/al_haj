import 'package:al_haj/fade_page_route.dart';
import 'package:flutter/material.dart';

class bouttonFirstPage extends StatelessWidget {
  final Widget typeofaction;

  const bouttonFirstPage({Key key, this.typeofaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,

            FadePageRoute(
              widget: typeofaction,
            ),
          );
        },
        child: Image.asset("assets/icons/person.png"),
      ),
    );
  }
}
