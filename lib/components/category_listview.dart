import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Card(
           child: Image.asset('images/cap.jpg'),
         ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/belly.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/f.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(

            child: Image.asset('images/lether jacket.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/sandle.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/cap.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/f.jpg'),
          ),
          Padding(padding: EdgeInsets.all(5.00)),
          Card(
            child: Image.asset('images/lether jacket.jpg'),
          ),


        ],
      ),
    );
  }
}
