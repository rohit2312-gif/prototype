import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index=1;





  @override
  Widget build(BuildContext context) {
    var icon=<BottomNavigationBarItem>[
      
    BottomNavigationBarItem(icon: Icon(Icons.home,),title: Material(),),
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.square,),title: Material(),),
    BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart,),title: Material(),),
      BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage(
          "image/prototype.png"
      ),radius: 10.0,),title: Material(),),
    ];
    final navbar=BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Color(0xff292957),items: icon,currentIndex: index,onTap: (currentindex){
      setState(() {
        //Navigator.push(context, route)
        index=currentindex;
      });

    },);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(

        borderRadius: BorderRadius.all(Radius.circular(20.0)),

        child: Container(child: navbar,
        ),
      ),
    );
  }
}
