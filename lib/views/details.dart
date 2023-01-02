import 'package:booked/widgets/details_button.dart';
import 'package:booked/widgets/star.dart';
import 'package:booked/models/book.dart';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';


class BookDetails extends StatelessWidget {

  final Book book;

  const BookDetails({
    Key? key,
    required this.book
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Column(
                children: [
                  Row(
                      children: [
                        const SizedBox(width: 5),

                        IconButton(
                          icon: const HeroIcon(HeroIcons.chevronLeft),
                          onPressed: () => Navigator.pop(context),
                        ),

                        const Spacer(),

                        IconButton(
                          icon: const HeroIcon(HeroIcons.bookmark),
                          onPressed: () {

                          },
                        ),

                        IconButton(
                          icon: const HeroIcon(HeroIcons.ellipsisVertical),
                          onPressed: () {

                          },
                        ),

                        const SizedBox(width: 5),
                      ]),

                  const SizedBox(height: 10),

                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 2,
                          blurRadius: 10
                        )
                      ]
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        book.url,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    book.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    book.author,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400
                    ),
                  ),

                  const SizedBox(height: 10),

                  BookStars(star: book.star),

                  const SizedBox(height: 15),
                ]),
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.fromLTRB(40, 10, 20, 10),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.black12, width: 3)
                )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    book.description,
                    style: const TextStyle(
                        fontSize: 17,
                        height: 1.2,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54
                    ),
                  ),
                ])
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [

                  Expanded(
                    child: DetailsButton(
                      text: 'Preview',
                      icon: HeroIcon(HeroIcons.eye, color: Colors.black),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: DetailsButton(
                      text: 'Reviews',
                      icon: HeroIcon(HeroIcons.chatBubbleLeftRight, color: Colors.black),
                    ),
                  ),
                ]),
            ),

            const SizedBox(height: 80)
          ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            'BUY NOW',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
