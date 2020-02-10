import 'package:al_haj/ui/signup/signup_screen3.dart';
import 'package:al_haj/widgets/dropdownbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../../fade_page_route.dart';

class SignupScreen2 extends StatelessWidget {
  static const routeName = '/signup';
  //DateTime _dateTime= DateTime.now();
//  DateTime _date= DateTime.now();
//
//  Future<Null> selectDate(BuildContext context) async{
//    final DateTime picked = await showDatePicker(
//        context: context,
//        initialDate: _date,
//        firstDate: DateTime(1960),
//        lastDate: DateTime(2040));
//    if(picked !=null&&picked!=_date){
//      setState((){
//        _date=picked;
//        print(_date.toString());
//      });
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Login'),
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
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            width: double.infinity,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(child: SizedBox(
                        height: 150,
                        child: Image.asset("assets/icons/logo.png"))),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Phone',
                        contentPadding: const EdgeInsets.all(15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'anther phone',
                        contentPadding: const EdgeInsets.all(15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        //height: 150,
                        /*child: CupertinoDatePicker(
                              initialDateTime: _dateTime,
                              //mode: CupertinoDatePickerMode.time,
                              use24hFormat: true,
                              onDateTimeChanged: (dateTime){
                                print(dateTime);

                              },

                            ),*/
                        ),
                    FlatButton(
                        onPressed: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(1950, 1, 1),
                              maxTime: DateTime(2040, 12, 31),
                              onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            print('confirm $date');
                            int age = DateTime.now().year - date.year;
                            print("Age : $age");
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.ar);
                        },
                        child: SizedBox(
                          height: 50,
                          child: Text(
                            'Select Birthday ',
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600),
                          ),
                          
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child: Text(
                        'Continue',
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
                            widget: SignupScreen3(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
