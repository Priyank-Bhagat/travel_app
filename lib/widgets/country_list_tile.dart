 import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountryListTile extends StatelessWidget {
  final String placeName;
  final String countryName;
  final String imgUrl;
  final IconData heartType;
  final num rating;
  const CountryListTile(
      {super.key, required this.placeName,
        required this.imgUrl,
        required this.countryName,
        required this.heartType,
        required this.rating});

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              height: 220,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 200,
            width: 150,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 8, top: 8),
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              heartType,
                              color: Colors.red,
                              size: 15,
                            )))
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            placeName,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.locationDot,
                                size: 15,
                                color: Colors.white54,
                              ),
                              Text(
                                countryName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(deviceWidth(context) * 0.01),
                  child: Row(
                    children: List.generate(5, (index) {
                      return index < rating
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
