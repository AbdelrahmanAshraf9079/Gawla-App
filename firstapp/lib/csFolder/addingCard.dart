import 'package:firstapp/csFolder/customCard.dart';
import 'package:flutter_web/material.dart';

class firstCard extends StatefulWidget {
  final List<cCard> cardList ;

  firstCard({Key key,this.cardList}) : super(key: key);

  _firstCardState createState() => _firstCardState();
}

class _firstCardState extends State<firstCard> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
          child: Card(

          child:
        Stack(children: <Widget>[

Positioned(child:Image.network('https://img.icons8.com/bubbles/100/000000/add.png'),

      top:30,
      left:50,
),
Positioned(child: Text('Add another item here',),
      top:140,
      left:50,)

        ],)
        ,
      ),
    );
  }
}