import 'package:flutter/material.dart';

//THEME FOR SCREEN 1,2,3
var theme=ThemeData.dark().copyWith(
  canvasColor: Color(0xff292957),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(

    backgroundColor: Color(0xff292957),
  ),
  textTheme: TextTheme(
    subtitle2: TextStyle(
      fontWeight: FontWeight.bold,
      //fontSize: 40.0,

    ),
    subtitle1:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
    ),


    bodyText2: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
    ),
  ),
  iconTheme: IconThemeData(
          color: Colors.lightBlueAccent.withOpacity(0.9),
//    color: Color(0xff3F6B7E),
  ),
);
BoxDecoration boxDecoration= BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  gradient: LinearGradient(
    colors: [
      Color(0xff292A55),
      Color(0xff272863),
      Color(0xff2C2C48),
      //Colors.black,
    ],
  ),
);
//SCREEN 2 AND SCREEN 3
class back_button extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      //alignment: Alignment.topLeft,
      child: Row(
        children: [
          Icon(Icons.keyboard_arrow_left,color: Colors.white,),

          Text("Back",style: TextStyle(
            fontSize: 18.0
          ),),
        ],

      ),
    );
  }
}

//SCREEN 3
class reusable_container_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),

      decoration: boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Text(
              "Anytime Fitness",style: TextStyle(fontSize: 20.0),),

              Text("₹250",style: TextStyle(fontSize: 20.0,color: Colors.lightBlueAccent.withOpacity(0.9)),),
            ],

          ),
          // ListTile(

          //   trailing:
          //   //Text("₹250"),
          //
          // ),
          SizedBox(
            height: 5.0,
          ),
          Row(
           
            children: [
              Text("Offer:",style: TextStyle(color: Color(0xff72738E),),),
              SizedBox(width: 10.0,),
              Text("One Day Plan"),
            ],
          ),
          Row(
            children: [
              Text("Date:",style: TextStyle(color: Color(0xff72738E),),),
              SizedBox(width: 10.0,),
              Text("24 Apr 2021"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                    Text("Download Receipt",style: TextStyle(color: Colors.lightBlueAccent.withOpacity(0.9)),),
            ],
          ),
        ],
      ),
    );


  }
}

class Animatedroute extends PageRouteBuilder {
  final Widget w;




  Animatedroute({this.w}) :super(

      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (BuildContext context,Animation <double>animation,Animation<double> secanimation,Widget child){

        animation=CurvedAnimation(parent: animation,curve: Curves.fastOutSlowIn);

        return ScaleTransition(scale: animation,child: child
        );
      },
      pageBuilder: (BuildContext context,Animation <double>animation,Animation<double> secanimation){
        return w;
      });
}
