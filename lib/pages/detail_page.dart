import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  String image, name, shortdetail, moviedetail, price;
  DetailPage({
    required this.image,
    required this.name,
    required this.shortdetail,
    required this.moviedetail,
    required this.price,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> getFormattedDates() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE d');
    return List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return formatter.format(date);
    });
  }

  int track = 0;
  bool eight = false, ten = false, six = false;

  @override
  Widget build(BuildContext context) {
    final dates = getFormattedDates();
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            widget.image,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.5),
              // height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xff1e232c),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.shortdetail,
                    style: TextStyle(
                        color: const Color.fromARGB(224, 255, 255, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    widget.moviedetail,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Select date",
                    style: TextStyle(
                        color: const Color.fromARGB(240, 255, 255, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dates.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            track = index;
                            setState(() {});
                          },
                          child: Container(
                            width: 100,
                            margin: EdgeInsets.only(right: 20.0),
                            decoration: BoxDecoration(
                                color: Color(0xffeed51e),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: track == index
                                        ? Colors.white
                                        : Colors.black,
                                    width: 5.0)),
                            child: Center(
                                child: Text(
                              dates[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Select Time Slot",
                    style: TextStyle(
                        color: const Color.fromARGB(240, 255, 255, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          eight = true;
                          ten = false;
                          six = false;

                          setState(() {});
                        },
                        child: eight
                            ? Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffeed51e),
                                        width: 5.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "08: 00 pm",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffeed51e),
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "8: 00 pm",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          eight = false;
                          ten = true;
                          six = false;

                          setState(() {});
                        },
                        child: ten
                            ? Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffeed51e),
                                        width: 5.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "10: 00 pm",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffeed51e),
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "10: 00 pm",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          eight = false;
                          ten = false;
                          six = true;

                          setState(() {});
                        },
                        child: six
                            ? Material(
                                elevation: 10.0,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffeed51e),
                                        width: 5.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    "06: 00 pm",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffeed51e),
                                      width: 3.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "6: 00 pm",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xffeed51e),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xffeed51e),
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.white, width: 3.0)),
                        child: Column(
                          children: [
                            Text(
                              'Total :' '\₦' + widget.price,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Book now',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
