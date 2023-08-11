import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:lottie/lottie.dart';

class DistrictData extends StatelessWidget {
  DistrictData(
      {super.key,
      required this.pics2,
      required this.Email,
      required this.number,
      required this.name,
      required this.density,
      required this.adminpic,
      required this.designation,
      required this.spic,
      required this.aboutDistrict,
      required this.mandal,
      required this.population,
      required this.insqmtr,
      required this.data,
      required this.districtname});

  String Email;
  String number;
  String name;
  String density;
  String adminpic;
  String designation;
  String spic;
  var pics2;
  String aboutDistrict;
  String mandal;
  String population;
  String insqmtr;
  var data;
  String districtname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$districtname"),
          centerTitle: true,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        child: AnotherCarousel(
                          dotSpacing: 20,
                          dotPosition: DotPosition.bottomCenter,
                          dotVerticalPadding: -15,
                          dotBgColor: Colors.transparent,
                          images: [
                            for (int i = 0; i < pics2.length; i++)
                              CachedNetworkImage(
                                imageUrl: "${pics2[i]}",
                                fit: BoxFit.fill,
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About District :",
                              style: TextStyle(
                                // height: 2,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                " ${aboutDistrict}",
                                style: TextStyle(
                                    height: 2,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "DISTRICT AT A GLANCE :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CachedNetworkImage(
                                imageUrl: "${spic}",
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "Mandals : ",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    children: [
                                      TextSpan(
                                          text: "${mandal},",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17))
                                    ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "Population : ",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    children: [
                                      TextSpan(
                                          text: "${population},",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17))
                                    ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "Area in SQ mtr : ",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    children: [
                                      TextSpan(
                                          text: "${insqmtr},",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17))
                                    ]),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              richtext(left: "Density", ryt: density),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Adminstration :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: CachedNetworkImage(
                                    imageUrl: "${adminpic}",
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 100,
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                              ),
                              richtext(left: "Designation", ryt: designation),
                              SizedBox(
                                height: 10,
                              ),
                              richtext(left: "Name", ryt: name),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  richtext(left: "Number", ryt: number),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.black12)),
                                    height: 30,
                                    width: 30,
                                    child:
                                        LottieBuilder.asset("assets/call.json"),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  richtext(
                                    left: "Email",
                                    ryt: Email,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.black12)),
                                    height: 30,
                                    width: 30,
                                    child:
                                        LottieBuilder.asset("assets/mail.json"),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}

class richtext extends StatelessWidget {
  richtext({
    super.key,
    required this.ryt,
    required this.left,
  });

  final String ryt;
  String left;
  // String? json;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "$left : ",
          style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 18),
          children: [
            TextSpan(
              text: "${ryt}, ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ]),
    );
  }
}
