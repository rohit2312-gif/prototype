import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prototype/widgets_constants.dart';
import 'screen1.dart';
import 'widgets_constants.dart';
import 'navbar.dart';


class screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,

      home: Scaffold(
        backgroundColor: Color(0xff313376),

        bottomNavigationBar: Navbar(),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){

                  Navigator.pop(context);

              },
              child: back_button(),
            ),
            SizedBox(
              height: 25.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text("Your Account",
              style: TextStyle(
                fontSize: 25.0,

              ),),
            ),
            SizedBox(height: 20.0,),
            
            Expanded(


              child: Padding(
                padding: const EdgeInsets.all(8.0),






                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                  margin: EdgeInsets.only(right: 18.0),

                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                        ListTile(
                          title: Text("Account Information",style: TextStyle(fontSize: 20.0),),
                          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                        ),

                      Row(

                        children: [

                          Text("Name:",
                                     style: TextStyle(color: Color(0xff72738E),),
                                   ),
                          SizedBox(width: 10.0,),
                          Text("Anoushka Halder"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Email:",
                            style: TextStyle(color: Color(0xff72738E),),
                          ),
                          SizedBox(width: 10.0,),
                          Text("anouhska@gmail.com"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Phone:",
                            style: TextStyle(color: Color(0xff72738E),),
                          ),
                          SizedBox(width: 10.0,),
                          Text("+91-91673761085"),
                        ],
                      ),
                    ],
                  ),

                  decoration: boxDecoration,
                ),
              ),
            ),
            Expanded(
              //flex: 1,
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                margin: EdgeInsets.only(right: 18.0),

                decoration: boxDecoration,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Payment Methods",style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.mobileAlt,size: 30.0,),
                            ),
                            Text(
                                "UPI"
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(FontAwesomeIcons.creditCard,size: 30.0,),
                            ),
                            Text(
                                "Cards"
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.home_outlined,size: 30.0,),
                            ),
                            Text(
                                "Netbanking",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(CupertinoIcons.money_dollar_circle,size: 30.0,),
                            ),
                            Text(
                              "Cash"
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],

                ),
              ),
            ),),

            Expanded(

              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                margin: EdgeInsets.only(right: 18.0),

                decoration: boxDecoration,
                child: Column(
                      
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: Text("Account Security",style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
                    ),
                  Text("Change Password",),
                  Text("Checked Linked Accounts",),
                  Text("Delete Account",style: TextStyle(color: Colors.red),),



                  ],
                ),
              ),
            ),),

            Container(
              height: 60.0,
            ),

          ],
        ),
      ),

    );
  }
}


