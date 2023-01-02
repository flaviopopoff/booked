import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';


class DetailsButton extends StatelessWidget {

  final String text;
  final HeroIcon icon;

  const DetailsButton({
    Key? key,
    required this.text,
    required this.icon
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(const BorderSide(color: Colors.black38))
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,

              const SizedBox(width: 10),

              Text(
                text,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
                ),
              )
            ]),
        ),
        onPressed: () {},
      );
  }
}
