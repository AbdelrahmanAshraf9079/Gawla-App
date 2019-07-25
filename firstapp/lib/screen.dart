import 'package:flutter_web/material.dart';

class Screen  extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();

}


class _ScreenState extends State<Screen> {
  @override

  String name;
  String imageLink ;
  Color secondButton ;
  Color firstButton ;
  Color thirdButton ;
  Color forthButton ;
  List<String>  imageList  ;
  PageController controller;


void initState() {

name  = 'Digital museum \nof Renaissance art' ;
imageLink = 'https://livitaly-666b.kxcdn.com/wp-content/uploads/2017/02/25_david_michelangelo_florence.jpg';
firstButton = Colors.purple;
secondButton =Colors.transparent;
thirdButton  =Colors.transparent;
forthButton =Colors.transparent;
imageList = [ 'https://livitaly-666b.kxcdn.com/wp-content/uploads/2017/02/25_david_michelangelo_florence.jpg',
'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
'https://images.unsplash.com/photo-1559796781-51654d939af0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
'https://wallpaperplay.com/walls/full/4/3/c/315083.jpg'] ;
  controller = PageController(initialPage: 0);

}

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      PageView.builder(
  controller: controller,
  itemCount: 4,
  itemBuilder: (context,position){

return  Stack(
          children: <Widget>[


Image.network(
imageList[position],
    fit: BoxFit.cover ,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,



)
,


Positioned(
  top: MediaQuery.of(context).size.height*0.2,
  left: MediaQuery.of(context).size.width*0.65,
  child:
  Text( name ,
style: TextStyle(fontSize: 50, color: Colors.white ,fontWeight: FontWeight.bold ),)

),


Positioned(
top: MediaQuery.of(context).size.height*0.35,
left: MediaQuery.of(context).size.width*0.66 ,
child :

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
        RaisedButton(
            child: Text("EXPLORE" , style: TextStyle(fontSize: 15,color: Colors.white,),),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.all(20),
            color: Colors.purple,
            onPressed: (){},
                  ),
        Container(
          width: MediaQuery.of(context).size.width*0.02,
        ),

        RaisedButton(
            child: Row(children: <Widget>[
              Image.network('https://img.icons8.com/dotty/35/000000/compass.png')
              ,
              Container(width: 5,)
              ,
              Text("ABOUT  MUSEUM" , style: TextStyle(fontSize: 15,color: Colors.white,),)
            ],),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.all(20),
            color: Colors.transparent,
            onPressed: (){},
                  ),

//         FloatingActionButton.extended(
//             onPressed: () {},
//             icon: Icon(Icons.audiotrack),
//             label: Text("ABOUT  MUSEUM" , style: TextStyle(fontSize: 15,color: Colors.white, ),),
//             backgroundColor: Colors.transparent,


// )


  ],
)
),

Positioned(
  bottom: MediaQuery.of(context).size.height*0.1,
  left: MediaQuery.of(context).size.width*0.8 ,
  child :
  Row(
    children: <Widget>[
      RaisedButton(
            child: Text("I" , style: TextStyle(fontSize: 15,color: Colors.white, ),),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            //padding: EdgeInsets.all(5),
            color: firstButton,
            onPressed: (){
              if (controller.hasClients)
              (

                controller.animateToPage(0, duration:const Duration(microseconds: 1000) ,curve: Curves.easeIn )
              );

              setState(() {
              name  = 'Digital museum \nof Renaissance art' ;

              firstButton = Colors.purple ;
              secondButton = Colors.transparent ;
              thirdButton = Colors.transparent ;
              forthButton = Colors.transparent ;
              });
            },
                  ),
        // Container(
        //   width: MediaQuery.of(context).size.width*0.01,
        // ),

        RaisedButton(
            child: Text("II" , style: TextStyle(fontSize: 15,color: Colors.white,),),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            //padding: EdgeInsets.all(5),
            color: secondButton,
            onPressed: (){

                if (controller.hasClients)
              (

                controller.animateToPage(1, duration:const Duration(microseconds: 500) ,curve: Curves.bounceIn )
              );
              setState(() {
              name  = 'Digital museum \nof Modern art' ;

              secondButton = Colors.purple ;
              firstButton = Colors.transparent ;
              thirdButton = Colors.transparent ;
              forthButton = Colors.transparent ;
              });
            },
                  ),
        // Container(
        //   width: MediaQuery.of(context).size.width*0.01,
        // ),

        RaisedButton(
            child: Text("III" , style: TextStyle(fontSize: 15,color: Colors.white,),),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            //padding: EdgeInsets.all(5),
            color: thirdButton,
            onPressed: (){
                  if (controller.hasClients)
              (

                controller.animateToPage(2, duration:const Duration(microseconds: 500) ,curve: Curves.bounceIn )
              )  ;
              setState(() {
              name  = 'Digital museum \nof Islamic art' ;
              firstButton = Colors.transparent ;
              secondButton =Colors.transparent ;
              thirdButton = Colors.purple;
              forthButton =Colors.transparent ;
              });
            },
                  ),
        // Container(
        //   width: MediaQuery.of(context).size.width*0.01,
        // ),

        RaisedButton(
            child: Text("IV" , style: TextStyle(fontSize: 15,color: Colors.white, ),),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            //padding: EdgeInsets.all(5),
            color: forthButton,
            onPressed: (){
              if (controller.hasClients)
              (

                controller.animateToPage(3, duration:const Duration(microseconds: 1000) ,curve: Curves.easeIn )
              );

              setState(() {
              name  = 'Digital museum \nof Ancient Egypt' ;

              firstButton = Colors.transparent  ;
              secondButton = Colors.transparent ;
              thirdButton = Colors.transparent ;
              forthButton = Colors.purple ;
              });
            },
                  ),
        // Container(
        //   width: MediaQuery.of(context).size.width*0.02,
        // ),



    ],
  )
  )
,

          ],
            )
    ;



},
)
          ,

    );
  }
}