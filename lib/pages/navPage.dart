import 'package:books/pages/Home.dart';
import 'package:books/pages/booksPage.dart';
import 'package:books/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var indexPage;
  int _selectedIndex = 0;
  
  
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    
    indexPage = Home();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      if(index==0){
        indexPage=Home();
      }else if(index==1){
        indexPage=BookaPage();
      }else if(index==2){
        indexPage=ProfilePage();
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Book Store',
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            )),
          ),
          elevation: 0,
          actions: <Widget>[
            Container(
              height: 40,
              width: 40,
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
              minRadius: 22,
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
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.white24,
        //buttonBackgroundColor: Colors.grey[800],
        //color: Colors.blue,
        //height: 50,
        items: [
          BottomNavigationBarItem(
            label: "Home" ,
            icon: Icon(
              Icons.home,
              
            ),
          ),
          BottomNavigationBarItem(
            label: "Books",
            icon: Icon(
              Icons.book_rounded,
              
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
              
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
