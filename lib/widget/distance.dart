import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
class distance extends StatelessWidget {
  const distance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_searching_outlined,
          color: Colors.black12,
          size: 13,
        ),
        const Text(
          "Accra",
          style: TextStyle(fontSize: 13),
        ),
        const SizedBox(
          width: 4,
        ),
        ...List.generate(
          14,
          (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: Colors.transparent,
              ),
            );
          },
        ),
        const SizedBox(
          width: 4,
        ),
       const  Icon(
          Ionicons.location_outline,
          size: 13,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 4,
        ),
        const Text(
          "Kumii",
          style: TextStyle(fontSize: 14, color: Colors.blue),
        ),
      ],
    );
  }
}
