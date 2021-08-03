import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

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
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart_rounded),
                  tooltip: 'Show Snackbar',
                  color: Colors.grey[800],
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                ),
              ),
              SizedBox(
                width: 10,
              )
            ]),

        //app body
        body: Container(
          child: Center(child: Text("CART")),
        ));
  }
}
