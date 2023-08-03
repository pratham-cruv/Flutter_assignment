import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/utils/colors.dart';
import 'package:flutter_assignment/utils/dummy_data.dart';
import 'package:flutter_assignment/widgets/custom_list.dart';
import 'package:flutter_assignment/widgets/sized_divider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  DummyData d = DummyData();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
          backgroundColor: background,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: background)),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: SizedBox(
              height: height * 0.6,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black54,
                          size: 20,
                        )),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        height: 45,
                        width: 250,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "THE RAJPUT ROOM",
                                style: GoogleFonts.jetBrainsMono(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Rambagh Palace",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(color: itemColor),
                        child: Center(
                          child: Text(
                            "0${d.itemCount}",
                            style: TextStyle(
                                fontSize: 50,
                                color: background,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 220,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "0${d.itemCount} items",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Change",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.dashed,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 128, 128, 128),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 40,
                        child: Center(
                          child: Text(
                            "${d.totalCost}",
                            style: TextStyle(
                              fontSize: 15,
                              color: black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedDivider(),
                  CustomListTextAndPrice(
                      flagChange: true,
                      height: 80,
                      width: 300,
                      title: "DELIVERY FEE",
                      subtitle:
                          "Rambagh Palace, H-1B, Azkaban Facility for Muggles, 304098",
                      price: "₹${d.deliveryFee}"),
                  SizedDivider(),
                  CustomListTextAndPrice(
                      flagChange: false,
                      height: 70,
                      width: 300,
                      title: "TAXES AND CHARGES",
                      subtitle:
                          "Some info about taxes and service charges for transparency",
                      price: "₹${d.taxAndCharges}"),
                  SizedDivider(),
                  CustomListTextAndPrice(
                      flagChange: false,
                      height: 30,
                      width: 300,
                      title: "TO PAY",
                      subtitle: "",
                      price:
                          "₹${d.totalCost + d.deliveryFee + d.taxAndCharges}"),
                  SizedDivider()
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.3,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: height * 0.27,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: const [Colors.transparent, Colors.black],
                        stops: const [
                          0.0,
                          0.5
                        ], // Adjust the stops to control the fade length.
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      'assets/images/bgImg.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "ESTIMATED DELIVERY TIME",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "25 Mins",
                      style: GoogleFonts.ptSerif(
                        fontSize: 28,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  // Widget sizedDivider() {
  //   return Column(
  //     children: const [
  //       SizedBox(height: 5,),
  //       Divider(thickness: 1,),
  //       SizedBox(height: 5,),
  //     ],
  //   );
  // }
}
