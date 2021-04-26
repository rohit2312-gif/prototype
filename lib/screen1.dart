import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen 2.dart';
import 'widgets_constants.dart';
import 'screen3.dart';
void main() {
  runApp(app());
}


class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    return MaterialApp(

      theme: theme,

      home: Scaffold(

        bottomNavigationBar: Navbar(),

        backgroundColor: Color(0xff605FA0),
        body: Stack(
          children: [

             Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(left:7.0,right: 7.0),
                     child: Container(

                       margin: EdgeInsets.only(top: 250.0),

                       decoration: BoxDecoration(

                         gradient: LinearGradient(
                           colors: [Color(0xff29295D),Color(0xff11112C)],
                           begin: FractionalOffset.topCenter,
                           end: FractionalOffset.bottomCenter,

                         ),
                        borderRadius: BorderRadiusDirectional.circular(20.0),
                       ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 100.0,
                           ),
                           Text("Anoushka Halder",
                           style: TextStyle(color: Colors.white,fontSize: 20.0),
                           ),

                           Container(
                             padding: EdgeInsets.all(8.0,),
                            child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("+91-9163761085"),
                                Text("anouska@gmail.com"),
                                //Listings(),
                              ],
                            ),

                             width: 280.0,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadiusDirectional.circular(10.0),
                               gradient: LinearGradient(
                                 colors: [Color(0xff444371),Color(0xff5C5B9A),Color(0xff2C2C48)],
                               ),
                             ),
                           ),

                       Flexible(
                         child: Container(
                           alignment: Alignment.center,
                           //height: 350.0,
                           width: 300.0,
                           child: ListView(
                             children: [

                               ListTile(
                                  onTap: (){


                                      Navigator.push(context,  Animatedroute(w: Screen3()));

                                  },
                                   leading: Icon(FontAwesomeIcons.dumbbell),
                                   title: Text("Your gyms",)

                               ),
                            ListTile(
                               onTap: (){

                                Navigator.push(context, Animatedroute(w: screen2()));

                                },
                              leading: Icon(Icons.perm_contact_cal_outlined),
                              title: Text("Account Settings"),
                            ),
                               ListTile(
                                 leading: Icon(CupertinoIcons.gear),
                                 title: Text("About"),
                               ),
                               ListTile(
                                 leading: Icon(CupertinoIcons.headphones),
                                 title: Text("Support"),
                               ),
                               ListTile(
                                 leading: Icon(FontAwesomeIcons.arrowAltCircleLeft),
                                 title: Text("Logout"),
                               ),

                             ],
                           ),
                         ),
                       ),
                           SizedBox(
                             height: 10.0,
                           ),
                           //Navbar(),


                         ],
                       ),
                     ),
                   ),
                 ),
                // Listings(),
               ],
             ),
            Positioned(child: CircleAvatar(backgroundImage: AssetImage(
              "image/prototype.png"),radius: 80.0,),left: 120.0,top: 170.0,),

          ],
        ),
      ),
    );
  }
}

