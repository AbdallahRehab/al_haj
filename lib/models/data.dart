import 'package:flutter/material.dart';

class Data{

 final String localname;

  Data({this.localname});

}
final Data owner=Data(localname:"مناسك");
final Data superAdmin=Data(localname:"المسئول الرئيسي");
final Data admin=Data(localname:"المشرف");
final Data user=Data(localname:"الحاج/الحاجة");