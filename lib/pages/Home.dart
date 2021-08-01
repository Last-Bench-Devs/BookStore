import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
                height: 160.0,
                width: 350.0,
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
      ),
    );
  }
}
