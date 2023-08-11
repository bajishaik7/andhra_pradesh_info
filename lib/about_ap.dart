import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AboutAp extends StatelessWidget {
  AboutAp({super.key});
  Map skb = {
    "apdata": [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Nandi_Bull_Lepakshi2.jpg/1280px-Nandi_Bull_Lepakshi2.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Tirumala_090615.jpg/800px-Tirumala_090615.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Vizag_View_from_Kailasagiri.jpg/800px-Vizag_View_from_Kailasagiri.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Papi_Hills_Tour_Pic_10.jpg/800px-Papi_Hills_Tour_Pic_10.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/2/21/Araku_valley_view.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Vijayawada_landscape.jpg/800px-Vijayawada_landscape.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Dhyana_Buddha_statue.jpg/800px-Dhyana_Buddha_statue.jpg",
    ],
    "about":
        "  Andhra Pradesh, state of India, located in  the southeastern part of the subcontinent.It is bounded by the Indian states of Tamil Nadu to the south, Karnataka to the southwest and west, Telangana to the northwest and north, and Odisha to the northeast. The eastern boundary is a 600-mile (970-km) coastline along the Bay of Bengal. Telangana was a region within Andhra Pradesh for almost six decades, but in 2014 it was carved off to form a separate state. The capital of both Andhra Pradesh and Telangana is Hyderabad, in west-central Telangana.\n\ \n\   The state draws its name from the Andhra people, who have inhabited the area since antiquity and developed their own language, Telugu. Andhra Pradesh came into existence in its present form in 1956 as a result of the demand of the Andhras for a separate state. Although it is primarily agricultural, the state has some mining activity and a significant amount of industry. Area 106,204 square miles (275,068 square km). Pop. (2011) 84,665,533.",
  };
  List apim = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Nandi_Bull_Lepakshi2.jpg/1280px-Nandi_Bull_Lepakshi2.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Tirumala_090615.jpg/800px-Tirumala_090615.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Vizag_View_from_Kailasagiri.jpg/800px-Vizag_View_from_Kailasagiri.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Papi_Hills_Tour_Pic_10.jpg/800px-Papi_Hills_Tour_Pic_10.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/2/21/Araku_valley_view.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Vijayawada_landscape.jpg/800px-Vijayawada_landscape.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Dhyana_Buddha_statue.jpg/800px-Dhyana_Buddha_statue.jpg",
  ];
  List stateimage1 = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/IN-AP.svg/800px-IN-AP.svg.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Andhra_Pradesh_districts_2022.svg/1024px-Andhra_Pradesh_districts_2022.svg.png"
  ];
  Map data = {
    "Country": "India",
    "Region": "South India",
    "Capital": "Amaravati",
    "Largest city": "Visakhapatnam",
    "Districts": "26",
    "Chief minister": "",
    "Council": "Andhra Pradesh Legislative Council (58 seats)",
    "Assembly": "Andhra Pradesh Legislative Assembly (175 seats)",
    "Rajya Sabha": "11 seats",
    "Lok Sabha": "25 seats",
    "High Court": "	Andhra Pradesh High Court",
    "Provincial bird of Andhra Pradesh":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Coracias_affinis_-_Kaeng_Krachan.jpg/180px-Coracias_affinis_-_Kaeng_Krachan.jpg",
    "Provincial animal of Andhra Pradesh":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Blackbuck_male_female.jpg/180px-Blackbuck_male_female.jpg",
    "Provincial tree of Andhra Pradesh":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Neem_tree.JPG/135px-Neem_tree.JPG",
    "Provincial flower of Andhra Pradesh":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Blue_water_lilly_flower.jpg/180px-Blue_water_lilly_flower.jpg",
  };
  List pronames = [
    "Provincial bird of Andhra Pradesh",
    "Provincial animal of Andhra Pradesh",
    "Provincial tree of Andhra Pradesh",
    "Provincial flower of Andhra Pradesh",
  ];
  List proim = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Blackbuck_male_female.jpg/180px-Blackbuck_male_female.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Coracias_affinis_-_Kaeng_Krachan.jpg/180px-Coracias_affinis_-_Kaeng_Krachan.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Neem_tree.JPG/135px-Neem_tree.JPG",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Blue_water_lilly_flower.jpg/180px-Blue_water_lilly_flower.jpg",
  ];
  // for (int i = 0; i < apim.length; i++)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Andhra Pradesh"),
      //   centerTitle: true,
      // ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) => Column(
          children: [
            Card(
              child: SizedBox(
                height: 280,
                child: AnotherCarousel(
                    dotSpacing: 20,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: -15,
                    dotBgColor: Colors.transparent,
                    images: [
                      for (int i = 0; i < apim.length; i++)
                        CachedNetworkImage(
                          imageUrl: "${apim[i]}",
                          fit: BoxFit.fitHeight,
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
                child: Text(
              "${skb["about"]}",
              style: TextStyle(fontSize: 16, height: 2),
            )),
            SizedBox(
              height: 300,
              child: Card(
                child: AnotherCarousel(
                    dotSpacing: 20,
                    dotPosition: DotPosition.bottomCenter,
                    dotVerticalPadding: -15,
                    dotBgColor: Colors.transparent,
                    images: [
                      for (int i = 0; i < stateimage1.length; i++)
                        CachedNetworkImage(
                          imageUrl: "${stateimage1[i]}",
                          // stateimage1
                          fit: BoxFit.fitHeight,

                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 5),
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 1, blurRadius: 5),
                    BoxShadow(color: Colors.black12)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Newrow(
                    left: "Country",
                    ryt: "India",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Region",
                    ryt: "South India",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Largest city",
                    ryt: "Visakhapatnam",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Population",
                    ryt: "49,577,103",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Districts",
                    ryt: "26",
                  ),
                  Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  Newrow(
                    left: "Chief minister",
                    ryt: "Andhra Pradesh Legislative Council (58 seats)",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Assembly",
                    ryt: "Andhra Pradesh Legislative Assembly (175 seats)",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Rajya Sabha",
                    ryt: "11 seats",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "Lok Sabha",
                    ryt: "25 seats",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Newrow(
                    left: "High Court",
                    ryt: "Andhra Pradesh High Court",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  Text(
                    "Provincial symbols of Andhra Pradesh :",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      for (int a = 0; a < pronames.length; a++)
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black12)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "${pronames[a]}",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 20, 63, 84),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            errorListener: () {
                                          Icon(Icons.error);
                                        }, "${proim[a]}"),
                                        /*  NetworkImage(
                                          "${proim[a]}",
                                        ), */
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black12)),
                                width: 100,
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class Newrow extends StatelessWidget {
  Newrow({super.key, required this.left, required this.ryt});
  String left;
  String ryt;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$left : ",
            style: TextStyle(
                color: const Color.fromARGB(255, 71, 93, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "$ryt",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
