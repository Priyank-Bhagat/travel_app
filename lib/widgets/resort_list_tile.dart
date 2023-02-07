import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class ResortListTile extends StatelessWidget {

  final String imgUrl;
  final String resortName;
  final String price;
  final double rating;

  const ResortListTile({super.key, required this.imgUrl, required this.resortName, required this.price, required this.rating});



  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue.shade100)),
        height: deviceHeight(context) * 0.17,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  imgUrl,
                  height: deviceHeight(context) * 0.14,
                  width: deviceWidth(context) * 0.19,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15.0),
              SizedBox(
                height: deviceHeight(context) * 0.14,
                width: MediaQuery.of(context).size.width - 130.0,
                child: ListView(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          top: deviceHeight(context) * 0.009),
                      alignment: Alignment.centerLeft,
                      child:  Text(
                        resortName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: deviceHeight(context) * 0.01),
                    Container(
                      alignment: Alignment.centerLeft,
                      child:  Text(
                        price,
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.orange,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    RatingBar.builder(
                      itemSize: 12,
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      },
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "A resort is a place used for \n vacation, relaxation or as a day...",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: deviceWidth(context) * 0.03,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

