import 'package:firstapp/csFolder/popup.dart';
import 'package:flutter_web/material.dart';

class cCard extends StatelessWidget {

  final String name ;
  final String url ;



  const cCard({Key key, this.name, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      width:100,
      height: 100,
    child:
    Stack(children: <Widget>[

Positioned(
  top: 60,
  left: 90,
  child:   CircleAvatar(

    radius: 45,

    backgroundImage: NetworkImage(url)

  ),
)
,
Positioned(
  top: 150,
  left: 90,
  child:
Text(name,style: TextStyle(fontSize: 30))
),

// Positioned(
//   top: 10,
//   left: 230,
//   child:   GestureDetector(
//     onTap: (){
//       cardList.remove(this) ;

//     },
//       child: Container(

// height: 30,
// width: 30,
// child: Image.network('https://img.icons8.com/dotty/40/000000/delete-forever.png'),

//     ),
//   )
// ),

  Positioned(
    top: 9,
    left: 10,
    child:   GestureDetector(
    onTap: (){
      showDialog(


            context: context,


            builder: (BuildContext context) => popWidget(name:this.name,url: this.url,),


          );
    },
    child: Container(

  height: 40,
  width: 40,
  child: Image.network('https://img.icons8.com/carbon-copy/40/000000/edit-folder.png'),

    ),
  )
),


    ],
    ),
    ),
    );
  }










}





