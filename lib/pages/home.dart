import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moviebooking_app/pages/detail_page.dart';

// stful

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imageUrls = [
    "images/infinity.jpg",
    "images/salman.jpg",
    "images/shahrukhmovies.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "images/wave.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.0),
                Text("Hello, Adeyemi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome To",
              style: TextStyle(
                  color: const Color.fromARGB(241, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  "Filmy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Fun",
                  style: TextStyle(
                      color: Color(0xffedb41d),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: CarouselSlider(
                  items: imageUrls.map((url) {
                    return Builder(builder: ((context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                        ),
                      );
                    }));
                  }).toList(),
                  options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1)),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Top Trending Movies",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(image: "images/infinity.jpg", name: "Infinity Wars", shortdetail: "Action, Adventure", moviedetail: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his bimz of devastation and ruin puts an end to the universe.", price: '1000',)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/infinity.jpg",
                              height: 220, width: 180, fit: BoxFit.cover),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 180),
                          padding: EdgeInsets.only(left:  10),
                          height: 220,
                          width: 180,
                          decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20) )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Infinity Wars",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Action, Adventure",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 247, 247, 247),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                   SizedBox(width: 20.0,),
                    Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/pushpa.jpg",
                            height: 220, width: 180, fit: BoxFit.cover),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 180),
                        padding: EdgeInsets.only(left:  10),
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20) )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pushpa 2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Action, Adventure",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 215, 215, 215),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
               
                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
