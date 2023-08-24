import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news/app_styles.dart';
import 'package:travel_news/news_detail_screen.dart';
import 'package:travel_news/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kLightBlue,
                    image: const DecorationImage(
                        image: NetworkImage('https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png')
                    )
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4
                    ),
                  ),
                  Text(
                    'Monday, 3 October',
                    style: kPoppinsRegular.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                    color: kDarkBlue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24.0,
                    spreadRadius: 0.0
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 13
                        ),
                        hintText: 'Search for article',
                        border: kBorder,
                        errorBorder: kBorder,
                        focusedBorder: kBorder,
                        focusedErrorBorder: kBorder,
                        hintStyle: kPoppinsRegular.copyWith(
                            color: kLightGrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3
                        )
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(kBorderRadius)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 38
                  ),
                  child: Text(
                    '#Health',
                    style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 20),
                  height: 304,
                  width: 255,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                            color: kDarkBlue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewsDetailScreen()
                            )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kWhite,
                          elevation: 0.0,
                          shadowColor: Colors.transparent
                        ),
                        child: Container(
                          height: 164,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/Danau-Toba-edited.jpg'
                                  )
                              )
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Flexible(
                        child: Text(
                          'Bali - Unique, Unmatched. There is no other place like Bali in this world.',
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 19,
                                backgroundColor: kLightBlue,
                                backgroundImage: NetworkImage(
                                    'https://i.insider.com/61ba044393a8fc0018c032ad?width=700'
                                ),
                              ),
                              const SizedBox(width: 12,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sam Aziz Ahwan',
                                    style: kPoppinsSemiBold.copyWith(
                                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                                    ),
                                  ),
                                  Text(
                                    'Sep 9, 2022',
                                    style: kPoppinsRegular.copyWith(
                                        color: kGrey,
                                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kBorderRadius),
                                color: kLightWhite
                            ),
                            child: SvgPicture.asset(
                              'assets/share_icon.svg',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for you',
                style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5
                ),
              ),
              Text(
                'View all',
                style: kPoppinsMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(
                      right: 20
                  ),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      boxShadow: [
                        BoxShadow(
                            color: kDarkBlue.withOpacity(0.051),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 24.0,
                            spreadRadius: 0.0
                        )
                      ]
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=300'
                                )
                            )
                        ),
                        child: SvgPicture.asset(
                          'assets/play_icon.svg',
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Top Trending Island in 2022',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kPoppinsSemiBold.copyWith(
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5
                              ),
                            ),
                            const SizedBox(height: 9,),
                            Row(
                              children: [
                                SvgPicture.asset('assets/eye_icon.svg'),
                                const SizedBox(width: 4,),
                                Text(
                                  '40,999',
                                  style: kPoppinsMedium.copyWith(
                                      color: kGrey,
                                      fontSize: SizeConfig.blockSizeHorizontal! * 3
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}