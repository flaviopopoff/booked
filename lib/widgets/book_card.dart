import 'package:booked/views/details.dart';
import 'package:booked/models/book.dart';

import 'package:flutter/material.dart';


class BookCard extends StatelessWidget {

  final Book book;
  final bool isGrid;

  const BookCard({
    Key? key,
    required this.book,
    this.isGrid = false
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => BookDetails(book: book)));
      },
      child: Container(
        width: !isGrid ? 160 : null,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                  book.url,
                  height: !isGrid ? 250 : null,
                  width: !isGrid ? 160 : null,
                  fit: BoxFit.cover
              ),
            ),

            const SizedBox(height: 10),

            Text(
              book.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
            ),

            const SizedBox(height: 5),

            Text(
              book.author,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w400
              ),
            ),
          ]),
      ),
    );
  }
}
