import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class BookaPage extends StatefulWidget {
  const BookaPage({Key? key}) : super(key: key);

  @override
  _BookaPageState createState() => _BookaPageState();
}

class _BookaPageState extends State<BookaPage> {
  List<Map> Books = [
    {
      'name': 'The Alchemist',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg',
      'price': '69',
    },
    {
      'name': 'Rich Dad Poor Dad',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '99',
    },
    {
      'name': 'Attitude is Everything',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/710jnzKlDTL.jpg',
      'price': '49',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Orders",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Books.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.network(
                              Books[index]['Image'],
                              height: 110.0,
                              width: 65.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Books[index]['name'],
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "To be delivered on Sunday",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Ordered on 29th July",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: Text(
                              "Track Package",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
