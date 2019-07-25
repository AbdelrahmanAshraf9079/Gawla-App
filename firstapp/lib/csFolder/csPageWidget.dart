import 'dart:js';

import 'package:firstapp/csFolder/addingCard.dart';
import 'package:firstapp/csFolder/customCard.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';


class dash extends StatefulWidget {

  final List<cCard> listA ;

  dash({Key key,this.listA}) : super(key: key);

  _dashState createState() => _dashState();
}

class _dashState extends State<dash> {

  // List<cCard> listA ;
  List<cCard> listB ;
  bool flag ;

@override
  void initState() {
    flag = false ;

    // listA  =[cCard(name: 'item1',url:'https://assets3.thrillist.com/v1/image/2652009/size/sk-2017_04_article_main_mobile.jpg' ,cardList:listA),
    //   cCard(name: 'item1',url:'https://assets3.thrillist.com/v1/image/2652009/size/sk-2017_04_article_main_mobile.jpg' ,cardList:listA),
    //         cCard(name:'item2',url: 'https://en.bcdn.biz/Images/2013/12/17/b32d8f63-a169-4770-8657-b47df8a025e4.jpg',cardList:listA),
    //         cCard(name: 'item3',url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNVoHDB9PFLr9FEZDkKJZ2oo_iJI7MK48HzcTOIVx6eLQoYJX4' ,cardList:listA),
    //         cCard(name: 'item4',url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU_1QJND1wUz3J2iJRBiK3AWX4eK4HLh9STzMTZYweX3wlwuBA' ,cardList:listA),] ;

    listB = widget.listA ;

  }


  @override
  Widget build(BuildContext context) {

        return
              Stack(
                              children: <Widget>[

                                Container(color:Colors.grey[200] ,),

                                Positioned(

                                 // top: MediaQuery.of(context).size.height*0.3,
                                  left:MediaQuery.of(context).size.width*0.2,
                                                                  child: Container(
                                                                  //color: Colors.cyan,
                  width: MediaQuery.of(context).size.width*0.6,
                  height:MediaQuery.of(context).size.height*1.0,
                                  child: GridView.builder(

                    itemCount: listB.length,

                    itemBuilder: (context,int i ){

                      if(i ==0 && flag ==false){
                        i-- ;
                        flag = true ;
                        return firstCard(cardList: widget.listA,) ;
                      }else {

                        return listB[i];

                      }

                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:4,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 5.0,
                    ),
                    physics: NeverScrollableScrollPhysics()
                  ),
                ),
                                ),

                                Positioned(

                                  bottom: MediaQuery.of(context).size.height*0.05,
                                  right: MediaQuery.of(context).size.width*0.03,

                                  child: FlatButton(
                                    color: Colors.blueAccent,
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                    child: Row(children: <Widget>[
                                      Image.network('https://img.icons8.com/cotton/30/000000/delete-folder--v2.png')
                                      ,Container(width: 10,)
                                      ,Text("Delete Items")
                                    ],
                                    ),
                                    onPressed: (){},


                                    )

                                    )

                              ],
              )


        ;
  }


}




