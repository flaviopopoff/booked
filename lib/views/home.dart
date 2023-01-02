import 'package:booked/widgets/book_card.dart';
import 'package:booked/utils/utils.dart';

import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:heroicons/heroicons.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff252525)),
        leading: IconButton(
          icon: const HeroIcon(HeroIcons.bars3BottomLeft),
          onPressed: () {

          },
        ),
        actions: [
          IconButton(
            icon: const HeroIcon(HeroIcons.magnifyingGlass),
            onPressed: () {

            },
          ),

          const SizedBox(width: 5),
        ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [

              const Text(
                'Popular Now',
                style: TextStyle(
                    fontSize: 26,
                    height: 1.5,
                    fontWeight: FontWeight.w700
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 310,
                child: ListView.separated(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BookCard(book: $utils.books[index + 3]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                ),
              ),

              const SizedBox(height: 5),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Books',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),

              MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: $utils.books.length,
                itemBuilder: (context, index) {
                  return BookCard(book: $utils.books[index], isGrid: true);
                },
              ),

              const SizedBox(height: 20)
            ]),
        ),
      ),
    );
  }
}
