import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/f.jpg',
            image_caption: 'suit' ,
          ),
          Category(
            image_location: 'images/belly.jpg',
            image_caption: 'belly',
          ),
          Category(
            image_location: 'images/lether jacket.jpg',
            image_caption: 'lether jacket',
          ),
          Category(
            image_location: 'images/sandle.jpg',
            image_caption: 'sandle',
          ),
          Category(
            image_location: 'images/shoe.jpg',
            image_caption: 'shoe',
          ),
          Category(
            image_location: 'images/womecoat.jpg',
            image_caption: 'womencoat',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},

        child: Container(
          margin: EdgeInsets.only(top: 2.0),
          width: 100,
          height: 350,
          child: ListTile(
              title: Image.asset(image_location),
              subtitle:new Container(
                alignment: Alignment.topCenter,
                child:Text(image_caption,style:  new TextStyle(fontSize: 12.0,color: Colors.black,fontWeight: FontWeight.bold),),

              )
          ),
        ),
      ),
    );
  }
}
