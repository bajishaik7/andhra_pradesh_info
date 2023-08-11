import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'districtdata.dart';
import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home:
            // HomeScreen()

            Scaffold(
          body: Center(
            child: FutureBuilder(
                future: Future.delayed(Duration(seconds: 6)),
                builder: (context, snapshot) =>
                    snapshot.connectionState == ConnectionState.done
                        ? HomeScreen()
                        : ListView(children: [
                            SizedBox(
                              height: 100,
                            ),
                            LottieBuilder.asset("assets/namaste.json"),
                            SizedBox(
                              height: 50,
                            ),
                            LottieBuilder.asset("assets/welcome.json")
                          ])

                // ? Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()
                // ));
                // :  LottieBuilder.asset("assets/namaste.json")

                ),
          ),
        ));

  
  }
}
