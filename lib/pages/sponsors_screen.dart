import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../statics/global.dart' as global;

class SponsorsScreen extends StatefulWidget {
  const SponsorsScreen({Key? key}) : super(key: key);

  @override
  State<SponsorsScreen> createState() => _SponsorsScreenState();
}

class _SponsorsScreenState extends State<SponsorsScreen> {
  int current = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var tempList = [
      'img/apple.png',
      'img/google.png',
      'img/Logo460x460.png',
    ];
    List<Widget> imageSliders = tempList
        .map(
          (item) => Center(
            child: Image.asset(
              item,
              fit: BoxFit.contain,
              height: global.setHeight(
                context,
                .8,
              ),
            ),
          ),
        )
        .toList();
    return Container(
      height: global.setHeight(context, .8),
      width: global.setWidth(context, 1),
      color: global.secondaryColor,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: controller,
              options: CarouselOptions(
                  height: global.setHeight(context, .8),
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: tempList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(
                      current == entry.key ? .9 : .4,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
