
import 'package:firstapp/csFolder/addingCard.dart';
import 'package:firstapp/csFolder/csPageWidget.dart';
import 'package:firstapp/csFolder/customCard.dart';
import 'package:firstapp/csFolder/popup.dart';
import 'package:firstapp/screen.dart';
import 'package:flutter_web/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      //Screen()
      Center(child:dash(listA: [cCard(name: 'item1',url:'https://assets3.thrillist.com/v1/image/2652009/size/sk-2017_04_article_main_mobile.jpg' ),
      cCard(name: 'item1',url:'https://assets3.thrillist.com/v1/image/2652009/size/sk-2017_04_article_main_mobile.jpg' ),
            cCard(name:'item2',url: 'https://en.bcdn.biz/Images/2013/12/17/b32d8f63-a169-4770-8657-b47df8a025e4.jpg'),
            cCard(name: 'item3',url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNVoHDB9PFLr9FEZDkKJZ2oo_iJI7MK48HzcTOIVx6eLQoYJX4' ),
            cCard(name: 'item4',url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU_1QJND1wUz3J2iJRBiK3AWX4eK4HLh9STzMTZYweX3wlwuBA' ),] ,) ,)
      //infoPage()
//Center(child: popWidget())

    );
  }
}





