import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prototype/widgets_constants.dart';
import 'screen1.dart';
import 'widgets_constants.dart';
import 'navbar.dart';

 class Screen3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,

      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:  Color(0xff313376),
        bottomNavigationBar: Navbar(
        ),

        body: Column(
          children: [

            GestureDetector(
                onTap: (){

                    Navigator.pop(context);

                },

                child: back_button()),
                SizedBox(
                  height: 10.0,
                ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(

               //padding: EdgeInsets.all(12.0),
                decoration: boxDecoration,
                child: TextField(

                          autocorrect: true,
                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,

                    icon: Icon(Icons.search,color: Colors.white,),
                    hintText: "Search",
                  ),
                ),
              ),
            ),
              SizedBox(
                height: 20.0,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListTile(

                trailing: Icon(FontAwesomeIcons.listUl,),
                title: Text("My gyms",style: TextStyle(fontSize: 25.0),),
              ),
            ),

            Flexible(

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
                  child: reusable_container_3(),
                )),

            Expanded(

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
                  child: reusable_container_3(),
                )),

            Expanded(

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
                  child: reusable_container_3(),
                )),

            Expanded(child: Container()),
          ],

        ),

      ),
    );
  }
}


