import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPolicy extends StatelessWidget {
  const UserPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Policy",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45, spreadRadius: 2, blurRadius: 5),
                  ]),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/800px-Emblem_of_Andhra_Pradesh.svg.png",
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                      "Welcome to our offline app dedicated to Andhra Pradesh districts, tourism, and various other details! We value your privacy and want to assure you that we do not collect or utilize any personal data from our users. Your information remains confidential and secure while using our app.\n\ \n\In terms of the pictures used within our app, we strive to provide accurate and visually appealing content. However, if you encounter any concerns regarding the use of specific images, please do not hesitate to contact us. We are committed to addressing such issues promptly, and if necessary, we will take immediate action to remove the disputed pictures.\n\ \n\We aim to create a seamless and enjoyable experience for our users while respecting their privacy and addressing any concerns that may arise. Thank you for choosing our app, and we hope you find it informative and engaging as you explore the diverse beauty of Andhra Pradesh."),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      if (await canLaunch("mailto:bajishaik325@gmail.com")) {
                        await launch("mailto:bajishaik325@gmail.com");
                      } else {
                        throw 'Could not launch';
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          "-",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "bajishaik325@gmail.com",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                        // Text("-"),
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: LottieBuilder.asset("assets/mail.json"))
                      ],
                    ),
                  ),
                  Container(
                      height: 200,
                      width: 200,
                      child: LottieBuilder.asset("assets/thankyou.json"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
