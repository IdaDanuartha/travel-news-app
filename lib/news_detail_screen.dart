import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news/app_styles.dart';
import 'package:travel_news/size_config.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42)
                        ),
                        color: kLighterWhite
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 60
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                color: kWhite
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/arrow_back_icon.svg'
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              border: Border.all(
                                  color: kWhite
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                                'assets/bookmark_white_icon.svg'
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/05/05125410/22.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJM8kLBDOg7UmSc89jd0aoTPdg7-_nJ4pdFmlKlQCsKRzbEyYkjLhCX3kxzbFHEMW7PIc&usqp=CAU',
  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/49/1d/40/nova-maldives.jpg?w=700&h=-1&s=1'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current
          ),
          items: imageList.map((item) => Center(
            child: Image.network(
              item,
              fit: BoxFit.cover,
              height: SizeConfig.blockSizeVertical! * 50,
              width: double.infinity,
            ),
          ),).toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                imageList
                    .asMap()
                    .entries
                    .map(
                        (entry) => GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6
                          ),
                          child: SvgPicture.asset(
                            _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg'
                        ),
                      ),
                    ))
                    .toList()
            ),
          ),
        )
      ],
    );
  }
}
