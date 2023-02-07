import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KutaBeachScreen extends StatelessWidget {
  const KutaBeachScreen({Key? key}) : super(key: key);

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false, // set it to false
          body: Stack(
            children: [
              // PageView for Image
              Container(
                // margin: EdgeInsets.only(right: 28),
                width: deviceWidth(context) * 1,
                height: deviceHeight(context) * 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            'https://live.staticflickr.com/7845/33331819548_9974155fc2_b.jpg'))),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.02,
                    left: deviceWidth(context) * 0.03,
                    right: deviceWidth(context) * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: deviceHeight(context) * 0.037,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                          size: deviceHeight(context) * 0.030,
                        ))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: deviceHeight(context) * 0.33,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: deviceWidth(context) * 0.03,
                        right: deviceHeight(context) * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kuta Beach',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: deviceHeight(context) * 0.04),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.locationDot,
                                  size: 15,
                                  color: Colors.white54,
                                ),
                                Text(
                                  'Bali, Indonesia',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: deviceHeight(context) * 0.02),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: deviceHeight(context) * 0.03),
                          child: Text(
                            "One of the most happening beaches in Goa, Kuta Beach is where you will find water sports fine dining restauratns, bars, and clubs Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: deviceHeight(context) * 0.020),
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.all(deviceWidth(context) * 0.01),
                              child: Row(
                                children: List.generate(5, (index) {
                                  return index < 4
                                      ? Icon(
                                          Icons.star,
                                          color: Colors.yellow.shade500,
                                          size: 19,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          color: Colors.white,
                                          size: 19,
                                        );
                                }),
                              ),
                            ),
                            const Text(
                              '4.2',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₹ 20,000/person",
                              style: TextStyle(
                                  fontSize: deviceHeight(context) * 0.026,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                              maxLines: 1,
                              textAlign: TextAlign.left,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                onPressed: () {},
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
    ));
  }
}
