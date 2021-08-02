import 'package:books/pages/Home.dart';
import 'package:books/pages/navPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailPage extends StatefulWidget {
  final String bookName;
  final String bookImage;
  final String BookPrice;
  const BookDetailPage(
      {Key? key,
      required this.bookImage,
      required this.bookName,
      required this.BookPrice})
      : super(key: key);

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  void initState() {
    print(widget.bookImage);
    print(widget.bookName);
    print(widget.BookPrice);

    super.initState();
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
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 1.00,
              height: 300,
              color: Colors.grey[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    height: 270,
                    child: Image.network(
                      widget.bookImage,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                widget.bookName,
                style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.91,
            margin: EdgeInsets.all(13),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          Row(
            children: [
              SizedBox(
                width: 13,
              ),
              Text(
                "\₹" + widget.BookPrice,
                style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Spacer(),
              OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.add, size: 18),
                label: Text("Add To Cart"),
              ),
              Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(Icons.add, size: 18),
                label: Text("Buy Now"),
              ),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}