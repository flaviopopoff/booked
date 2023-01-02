import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';


class BookStars extends StatelessWidget {

  final double star;

  const BookStars({
    Key? key,
    required this.star
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        for(int index = 0; index < star.ceil(); index++)
          HeroIcon(HeroIcons.star, color: Colors.yellow.shade500, size: 28, style: HeroIconStyle.solid),

        for(int index = 0; index < 5 - star.ceil(); index++)
          HeroIcon(HeroIcons.star, color: Colors.yellow.shade500, size: 28),

        const SizedBox(width: 10),

        Text(
          '${star.toString()} / 5.0',
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w800
          ),
        )

      ]);
  }
}