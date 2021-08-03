import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  final review;

  const Review({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  minRadius: 22,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTQZemI3NMLyRNugNBReZEJThcmts9veYBrg&usqp=CAU"),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sundar Pichai",
                  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 16)),
                )
              ],
            ),
            SizedBox(height: 10,),
            RatingBarIndicator(
              rating: 4.5,
              direction: Axis.horizontal,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemSize: 20,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 10,),
            Text(
                "Reprehenderit magna pariatur sit nisi culpa eu. Dolor elit anim reprehenderit velit. Do veniam veniam occaecat dolore tempor ea consectetur cupidatat quis deserunt irure officia. Eu qui magna in qui fugiat et cupidatat sint laboris ut pariatur qui minim.")
          ],
        ),
      ),
    );
  }
}
