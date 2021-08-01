import 'package:books/pages/Home.dart';
import 'package:books/pages/booksPage.dart';
import 'package:books/pages/profilePage.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var indexPage;
  @override
  void initState() {
    // TODO: implement initState
    indexPage=Home();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
          backgroundColor: Colors.white24,
          title: const Text(
            'Book Store',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.search_rounded),
                tooltip: 'Show Snackbar',
                color: Colors.grey[800],
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              minRadius: 25,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTQZemI3NMLyRNugNBReZEJThcmts9veYBrg&usqp=CAU"),
            ),
            SizedBox(
              width: 10,
            )
          ]),

      //app body
      body: indexPage,



      //bottom nav bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white24,
        buttonBackgroundColor: Colors.grey[800],
        color: Colors.blue,
        height: 50,
        items: <Widget>[
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(Icons.book_rounded, size: 30,color: Colors.white,),
          Icon(Icons.person, size: 30,color: Colors.white,),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            print(index);
            if(index==0){
              setState(() {
                indexPage=Home();
              });
            }else if(index==1){
              setState(() {
                indexPage=BookaPage();
              });
            }else if(index==2){
              setState(() {
                indexPage=ProfilePage();
              });
            }
          });
        },
      ),
    );
  }
}
