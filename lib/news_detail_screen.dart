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
      backgroundColor: kLighterWhite,
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
                        horizontal: kPaddingHorizontal,
                        vertical: 60
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
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
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: Text(
                'Unravel mysteries\nof the Maldives',
                style: kPoppinsBold.copyWith(
                  color: kDarkBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 7
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
                vertical: 16
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 2.5
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(
                  color: kBorderColor
                )
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: kBlue,
                    backgroundImage: NetworkImage(
                      'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png?f=webp'
                    ),
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5,),
                  Text(
                    "Keanu Carpent May 17 • 8 min read",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: kPoppinsRegular.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal
              ),
              child: Text(
                'Maldives is an archipelagic state located in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometers (470 miles; 400 nautical miles) from the Asian continent\'s mainland. The chain of 26 atolls stretches across the Equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.\n\nComprising a territory spanning roughly 90,000 square kilometers (353,000 sq mi) including the sea, land area of all the islands comprises 298 square kilometers (115 sq mi), Maldives is one of the world\'s most geographically dispered sovereign states and the smallest Asian Country as well as one of the smallest Muslim-majority countries by land area and, with around 557, 751 inhabitants, the 2nd east populous country in Asia. Male is the capital and the most populated city, traditionally called the "King\'s Island" where the ancient royal dynastics ruled for its central location',
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkBlue
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            )
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
