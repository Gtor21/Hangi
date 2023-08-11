import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.network(
              "https://pbs.twimg.com/profile_images/1105463065129177093/-t7543yS_400x400.png"),
          const Text("Hola"),
          const Text("Hola"),
        ],
      ),
    );
  }
}
