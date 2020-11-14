import 'package:ecommerce_app/components/ShopLogo.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'components/horizontal_listview.dart';
import 'components/products.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
        AssetImage('images/m2.jpg'),

      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 6.0,
      indicatorBgPadding: 8,
      dotColor: Colors.red[100],
    ),
  );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text("Rily's shirt designer app", style: TextStyle(color: Colors.black38),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.black38,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black38,), onPressed: (){})

        ],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("Rily Kiel"),
            accountEmail: Text("rily@kiel@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.person, color: Colors.white,),
            ),
          ),
            decoration: new BoxDecoration(
              color: Colors.red[100]
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person),
            ),
          ),InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("My orders"),
              leading: Icon(Icons.shopping_basket),
            ),
          ),InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("catergories"),
              leading: Icon(Icons.category),
            ),
          ),InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("favorite"),
              leading: Icon(Icons.favorite),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings, color: Colors.red),
            ),
          ),InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("About"),
              leading: Icon(Icons.help, color: Colors.red,),
            ),
          ),
        ],),
      ),
      body: new ListView(

        children: <Widget>[
          shopName(),
          image_carousel,
          Padding(padding: const EdgeInsets.all(10.0),
          child: Text("Categories"),),
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
