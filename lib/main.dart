import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'components/category_listview.dart';
import 'components/clipp.dart';
import 'components/horizontal_listview.dart';

void main(){
  runApp(
      MaterialApp(
        home: Homepage(),
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,

        ),
      )
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
       elevation: 0.0,
       brightness: Brightness.light,
       title:Text("Flutter",
       style: TextStyle(
           color: Colors.white,
         fontStyle: FontStyle.italic

       ),


       ) ,
       actions: [
         Icon(Icons.notifications,color: Colors.white,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 30),
           child: Icon(Icons.shopping_cart,color: Colors.white,),
         ),

       ],
       backgroundColor: Colors.orangeAccent,
     ),
      //Navigation
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orangeAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30,
            color: Colors.blue,),
          Icon(Icons.favorite, size: 30,color: Colors.blue,),
          Icon(Icons.shopping_cart, size: 30,color: Colors.blue,),


        ],
        onTap: (index) {
          //Handle button tap
        },
      ),

      drawer:new Drawer(
    child: new ListView(
    children: [
      //header
      new UserAccountsDrawerHeader(
        accountName: Text('Akarshan'),
        accountEmail: Text('akarshan817@gmail.com'),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(Icons.person,color: Colors.blue,),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.cyanAccent,

      ),
    ),
    //body of drawer
    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('homepage'),
    leading: Icon(Icons.home),
    ),
    ),

    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('MyAccount'),
    leading: Icon(Icons.home,color: Colors.cyanAccent,),
    ),
    ),

    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('My order'),
    leading: Icon(Icons.camera,color: Colors.cyanAccent,),
    ),
    ),
    InkWell(
    onTap: (){

    },
    child:  ListTile(

    title: Text('Category'),
    leading: Icon(Icons.category,color: Colors.cyanAccent,),
    ),
    ),

    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('favourite'),
    leading: Icon(Icons.favorite,color: Colors.cyanAccent,),
    ),
    ),

    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('setting'),
    leading: Icon(Icons.settings,color: Colors.cyanAccent,),
    ),
    ),

    Divider(),

    InkWell(
    onTap: (){

    },
    child:  ListTile(
    title: Text('help'),
    leading: Icon(Icons.help,color: Colors.cyanAccent,),
    ),
    ),
    ],
    ),
    ) ,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(14),
            gradient: SweepGradient(
              colors: [
                Colors.red,
                Colors.white,
              ],

            ),


          ),

          child: Column(
            children: [
              //ClipPath(
          ClipPath(
            //borderRadius: BorderRadius.circular(10.0),
             clipper: ClippingClass (),

                child: new Container(
                  padding: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
                  child:
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue

                        ),
                        borderRadius: BorderRadius.circular(55),
                      ),
                      hintText: "what are you looking for today?",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  //outer container
                  color: Colors.orangeAccent,
                ),

              ),
              new Container(
                //image slider begin
                width: MediaQuery.of(context).size.width,

                margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white60,

                  ),
                  constraints: BoxConstraints.expand(
                      height: 200

                  ),
                  child: imageSlider(context)
              ),
              //image slider End

              SizedBox(height: 10,),
              new Container(
                height: 50,
                //sticker start here
                child: HorizontalList(),

                //sticker end here
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.red,
                height: 10.0,
                indent: 5.0,
              ),
              SizedBox(height: 10,),
              new Container(

                margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                 child: Icon(
                                   Icons.category
                                 ),
                                ),
                              SizedBox(width: 10,),
                              Container(
                                child:   Text('All Categories',style: TextStyle( fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.orangeAccent),),
                              ),
                                SizedBox(width: 180,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(26)
                                  ),
                                  child: Text('view all'),
                                ),
                              ],
                            ),
              ),
              SizedBox(height: 5,),
              new Container(
                height: 100,
                color: Colors.white,
                child: CategoryList(),


              ),




              new Container(

                margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(


                  children: [
                    Container(
                      child: Icon(
                          Icons.category
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child:   Text('All Categories',style: TextStyle( fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.orangeAccent),),
                    ),
                    SizedBox(width: 180,),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(26)
                      ),
                      child: Text('view all'),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 5,),
              new Container(
                height: 100,
                child: CategoryList(),
              ),

              new Container(),
            ],
          ),
        ),
      ),


    );
  }
}


Swiper imageSlider(context){

  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return
        new Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage( "https://images.unsplash.com/photo-1595445364671-15205e6c380c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=764&q=80",
          ),
                  fit: BoxFit.cover)
          ),
        );
// "https://images.unsplash.com/photo-1595445364671-15205e6c380c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=764&q=80",
    },
    itemCount: 10,
    viewportFraction: 0.8,
    scale: 0.9,
  );

}

