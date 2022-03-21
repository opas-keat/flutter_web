import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/customText.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Drivers"),
    );
  }
}
