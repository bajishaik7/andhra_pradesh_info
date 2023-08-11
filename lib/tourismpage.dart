import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TourismPage extends StatelessWidget {
  TourismPage({
    super.key,
    required this.name,
    required this.bgimage,
    required this.sub,
    required this.des,
    required this.pic,
  });
  var name;
  var bgimage;
  var sub;
  var des;
  var pic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 44, 23),
        title: Text(name),
        centerTitle: true,
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: sub.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ExpansionTile(
                title: Text(
                  "${index + 1} ${sub[index]}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: double.infinity,
                        child: CachedNetworkImage(
                          imageUrl: "${pic[index]}",
                          fit: BoxFit.fill,
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "${des[index]}",
                      style: TextStyle(height: 2),
                    ),
                  ),
                ],
              ),
            );
            /*    
            Container(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${index + 1} ${sub[index]}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: double.infinity,
                        child: CachedNetworkImage(
                          imageUrl: "${pic[index]}",
                          fit: BoxFit.fill,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                        /*  Image.network(
                          "${pic[index]}",
                          fit: BoxFit.fill,
                        ), */
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("${des[index]}")
                  ],
                ),
              ),
            );
           */
          })),
    );
  }
}
