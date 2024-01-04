
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.icon});
   final Widget icon;
  @override

  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.grey),
        shape: BoxShape.circle,

      ),

    child: IconButton(
            onPressed: () {},
            icon:  icon,
            color: Colors.black54,
            splashRadius: 22,
          ),



    


    );
  }
}