import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/screens/baga_beach_screen.dart';
import 'package:travel_app/widgets/resort_list_tile.dart';

import '../widgets/country_list_tile.dart';
import 'kuta_beach_screen.dart';

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
                const Text(
                  'Choose Category',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
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
                  label: const Text(
                    'Beach   ',
                    style: TextStyle(fontSize: 17),
                  ),
                  selected: _isSelectedBeach,
                  side: BorderSide(
                      color: _isSelectedBeach ? Colors.green : Colors.white,
                      width: 1),
                  shape: const RoundedRectangleBorder(
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
                  label: const Text(
                    'Mountain',
                    style: TextStyle(fontSize: 17),
                  ),
                  selected: _isSelectedMount,
                  side: BorderSide(
                      color: _isSelectedMount ? Colors.green : Colors.white,
                      width: 1),
                  shape: const RoundedRectangleBorder(
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
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                children: [
                  GestureDetector(
                    child: const CountryListTile(
                        rating: 3,
                        countryName: "Bali, Indonesia ",
                        placeName: 'Kutta Beach',
                        heartType: FontAwesomeIcons.solidHeart,
                        imgUrl:
                            'https://img.traveltriangle.com/blog/wp-content/uploads/2018/08/Kuta-Beach-cover.jpg'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const KutaBeachScreen() ),);
                    },
                  ),
                  GestureDetector(
                    child: const CountryListTile(
                      countryName: "Goa, India ",
                      placeName: 'Baga Beach',
                      heartType: FontAwesomeIcons.heart,
                      imgUrl:
                          'https://media.istockphoto.com/id/690209132/photo/beach-in-goa-india.jpg?s=612x612&w=0&k=20&c=joh2NkmPg-lCOseVgQf-mBEjcusslquNr1ft0l4yjYc=',
                      rating: 5,
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BagaBeachScreen() ),);
                    },
                  ),
                  const CountryListTile(
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
                const Text(
                  'Popular Package',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
             const Padding(
               padding: EdgeInsets.only(bottom: 15.0),
               child: ResortListTile(imgUrl: 'https://img.traveltriangle.com/blog/wp-content/uploads/2018/08/Kuta-Beach-cover.jpg', resortName: 'Kuta Resort', price: '₹ 20,000', rating: 3),
             ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: ResortListTile(imgUrl: 'https://media.istockphoto.com/id/690209132/photo/beach-in-goa-india.jpg?s=612x612&w=0&k=20&c=joh2NkmPg-lCOseVgQf-mBEjcusslquNr1ft0l4yjYc=', resortName: 'Baga Resort', price: '₹ 38,000', rating: 5),
            ),

            const Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: ResortListTile(imgUrl: 'https://i2.wp.com/trot.world/wp-content/uploads/2020/07/DSC_0665-scaled.jpg?fit=2560%2C1707&ssl=1', resortName: 'Palolem Resort', price: '₹ 24,000', rating: 4),
            ),

          ],
        ),
      ),
    ));
  }
}

