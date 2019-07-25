import 'package:firstapp/csFolder/customCard.dart';
import 'package:flutter_web/material.dart';

class popWidget extends StatelessWidget {

      final String name ;
      final String url ;

  const popWidget({Key key,this.name,this.url}) : super(key: key);

  @override

Widget build(BuildContext context) {


    return new AlertDialog(


      title:  Text(name),


      content: Container(
        width: 500,
        height: 500,
        child: Column(children: <Widget>[

Container(width: 500,height: 200,child: Image.network(url),),

Text('Item Name',),
TextField(
  decoration: InputDecoration( hintText: 'Edit Item Name'),
)



        ],
        )
      ),


      actions: <Widget>[


        new FlatButton(


          onPressed: () {



            Navigator.of(context).pop();


          },


          textColor: Theme.of(context).primaryColor,


          child: const Text('Save!'),


        ),


      ],


    );


}

}