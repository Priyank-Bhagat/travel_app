import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  bool _isSelectedBeach = false;
  bool _isSelectedMount = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth(context) * 0.025,
            vertical: deviceHeight(context) * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: deviceWidth(context) * 0.039,
                  backgroundColor: Colors.grey.shade400,
                ),
                SizedBox(
                  width: deviceWidth(context) * 0.025,
                ),
                SizedBox(
                  width: deviceWidth(context) * 0.30,
                  child: const Text(
                    'Hello, Vineetha',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: deviceWidth(context) * 0.40,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.solidBell,
                      size: 20,
                      color: Colors.grey.shade600,
                    ))
              ],
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            const Text(
              'Where do you',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const Text(
              'want to explore today?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: deviceHeight(context) * 0.03,
                horizontal: deviceWidth(context) * 0.005,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'Search ',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Category',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
            Row(
              children: [
                RawChip(
                  showCheckmark: false,
                  backgroundColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  avatar: Image.asset("assets/images/beach.png",
                      matchTextDirection: false, width: 30.0),
                  label: Text(
                    'Beach   ',
                    style: TextStyle(fontSize: 17),
                  ),
                  selected: _isSelectedBeach,
                  side: BorderSide(
                      color: _isSelectedBeach ? Colors.green : Colors.white,
                      width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5))),
                  onSelected: (boolValue) {
                    setState(() {
                      _isSelectedBeach = boolValue;
                    });
                  },
                ),
                SizedBox(
                  width: deviceWidth(context) * 0.03,
                ),
                RawChip(
                  showCheckmark: false,
                  backgroundColor: Colors.transparent,
                  selectedColor: Colors.transparent,
                  avatar: Image.asset("assets/images/mountain.png",
                      matchTextDirection: false, width: 40.0),
                  label: Text(
                    'Mountain',
                    style: TextStyle(fontSize: 17),
                  ),
                  selected: _isSelectedMount,
                  side: BorderSide(
                      color: _isSelectedMount ? Colors.green : Colors.white,
                      width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5))),
                  onSelected: (boolValue) {
                    setState(() {
                      _isSelectedMount = boolValue;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                children: [
                  CountryListTile(
                      rating: 3,
                      countryName: "Bali, Indonesia ",
                      placeName: 'Kutta Beach',
                      heartType: FontAwesomeIcons.solidHeart,
                      imgUrl:
                          'https://img.traveltriangle.com/blog/wp-content/uploads/2018/08/Kuta-Beach-cover.jpg'),
                  CountryListTile(
                    countryName: "Goa, India ",
                    placeName: 'Baga Beach',
                    heartType: FontAwesomeIcons.heart,
                    imgUrl:
                        'https://media.istockphoto.com/id/690209132/photo/beach-in-goa-india.jpg?s=612x612&w=0&k=20&c=joh2NkmPg-lCOseVgQf-mBEjcusslquNr1ft0l4yjYc=',
                    rating: 5,
                  ),
                  CountryListTile(
                      rating: 4,
                      countryName: "Goa, India ",
                      placeName: 'Palolem Beach',
                      heartType: FontAwesomeIcons.solidHeart,
                      imgUrl:
                          'https://i2.wp.com/trot.world/wp-content/uploads/2020/07/DSC_0665-scaled.jpg?fit=2560%2C1707&ssl=1'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Package',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.blue.shade100)),
                  height: deviceHeight(context) * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            "https://img.traveltriangle.com/blog/wp-content/uploads/2018/08/Kuta-Beach-cover.jpg",
                            height: deviceHeight(context) * 0.14,
                            width: deviceWidth(context) * 0.19,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: deviceHeight(context) * 0.14,
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: ListView(
                            primary: false,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.009),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Kuta Resort",
                                  style: TextStyle(
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
                                child: Text(
                                  "₹ 20,000",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.orange,
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(height: 15.0),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.blue.shade100)),
                  height: deviceHeight(context) * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            "https://media.istockphoto.com/id/690209132/photo/beach-in-goa-india.jpg?s=612x612&w=0&k=20&c=joh2NkmPg-lCOseVgQf-mBEjcusslquNr1ft0l4yjYc=",
                            height: deviceHeight(context) * 0.14,
                            width: deviceWidth(context) * 0.19,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: deviceHeight(context) * 0.14,
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: ListView(
                            primary: false,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.009),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Baga Resort",
                                  style: TextStyle(
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
                                child: Text(
                                  "₹ 38,000",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.orange,
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(height: 15.0),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.blue.shade100)),
                  height: deviceHeight(context) * 0.17,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            "https://i2.wp.com/trot.world/wp-content/uploads/2020/07/DSC_0665-scaled.jpg?fit=2560%2C1707&ssl=1",
                            height: deviceHeight(context) * 0.14,
                            width: deviceWidth(context) * 0.19,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: deviceHeight(context) * 0.14,
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: ListView(
                            primary: false,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    top: deviceHeight(context) * 0.009),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Palolem Resort",
                                  style: TextStyle(
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
                                child: Text(
                                  "₹ 24,000",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.orange,
                                  ),
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              RatingBar.builder(
                                itemSize: 12,
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(height: 15.0),
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
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CountryListTile extends StatelessWidget {
  final String placeName;
  final String countryName;
  final String imgUrl;
  final IconData heartType;
  final num rating;
  CountryListTile(
      {required this.placeName,
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
      margin: EdgeInsets.only(right: 8),
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
          Container(
            height: 200,
            width: 150,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 8, top: 8),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
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
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              placeName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.locationDot,
                                size: 15,
                                color: Colors.white54,
                              ),
                              Text(
                                countryName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
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
                          : Icon(
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
