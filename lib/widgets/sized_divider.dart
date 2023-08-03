
import 'package:flutter/material.dart';

class SizedDivider extends StatelessWidget {
  const SizedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 5,),
        Divider(thickness: 1,),
        SizedBox(height: 5,),
      ],
    );
  }
}