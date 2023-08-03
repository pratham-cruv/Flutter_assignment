// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTextAndPrice extends StatelessWidget {
  final double height;
  final double width;
  final bool flagChange;
  final String title;
  final String subtitle;
  final String price;
  const CustomListTextAndPrice({
    Key? key,
    required this.height,
    required this.width,
    required this.flagChange,
    required this.title,
    required this.subtitle,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  if (subtitle.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 143, 142, 142),
                        ),
                      ),
                    ),
                  if (flagChange)
                    Text(
                      "Change",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed,
                        color: Color.fromARGB(255, 118, 118, 118),
                      ),
                    ),
                ]),
          ),
        ),
        SizedBox(
          height: (subtitle.isEmpty) ? 30 : 80,
          width: 40,
          child: Center(
            child: Text(
              price,
              style: TextStyle(
                fontWeight:
                    (subtitle.isEmpty) ? FontWeight.bold : FontWeight.normal,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
