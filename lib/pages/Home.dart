import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //sample Books...........................................
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
    {
      'name': 'Ikigai',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/71tbalAHYCL.jpg',
      'price': '79',
    },
    {
      'name': 'uc',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
    {
      'name': 'mc',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
    {
      'name': 'cc',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
    {
      'name': 'dc',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
    {
      'name': 'fc',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
    {
      'name': 'gandu',
      'Image':
          'https://images-na.ssl-images-amazon.com/images/I/91lHXEv3LfL.jpg',
      'price': '69',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header Carousel .....................................

            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                    height: 160.0,
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: Carousel(
                      images: [
                        NetworkImage(
                            'https://thedarshika.com/wp-content/uploads/2020/03/HBSE-9th-Class-Books-in-Pdf-1200x720.png'),
                        NetworkImage(
                            'https://media.wired.com/photos/5a3950d4635c6e46e7005aaf/master/pass/iStock-528414894.jpg'),
                        NetworkImage(
                            'https://miro.medium.com/max/1400/0*_v24QoVgwYymrphA.png'),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.white,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.white.withOpacity(0.0),
                      borderRadius: true,
                      moveIndicatorFromBottom: 180.0,
                      noRadiusForIndicator: true,
                    )),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ////list view of books ............................
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Story",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54,
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Books.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 85.0,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.network(
                                  Books[index]['Image'],
                                  height: 130.0,
                                  width: 85.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                Books[index]['name'],
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(fontSize: 15)),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$" + Books[index]['price'],
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Education",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black54,
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Books.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 85.0,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.network(
                                  Books[index]['Image'],
                                  height: 130.0,
                                  width: 85.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                Books[index]['name'],
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(fontSize: 15)),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$" + Books[index]['price'],
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
