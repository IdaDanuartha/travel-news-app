import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news/app_styles.dart';
import 'package:travel_news/size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 30
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSvr0wS7pDfL5jX9cKV1FNndmDkdv2sOBOsw&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Elly Byers", style: kPoppinsBold.copyWith(
                              color: kDarkBlue,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4
                            ),),
                            Text("Author & Writer", style: kPoppinsRegular.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3
                            ),),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: SizeConfig.blockSizeHorizontal! * 30
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Text(
                'Every piece of chocolate I ever ate is getting back at me... desserts are very revengeful...',
                style: kPoppinsMedium.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 3,
                  vertical: SizeConfig.blockSizeVertical! * 3.5
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kDarkBlue
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: kPoppinsBold.copyWith(
                              color: kWhite,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.1k',
                            style: kPoppinsBold.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizeVertical! * 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: kLighterBlue
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40k',
                            style: kPoppinsBold.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4
                            ),
                          ),
                          Text(
                            'Following',
                            style: kPoppinsMedium.copyWith(
                                color: kWhite,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Elly\'s Post',
                    style: kPoppinsBold.copyWith(
                      color: kDarkBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4
                    ),
                  ),
                  Text(
                    'View all',
                    style: kPoppinsMedium.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(
                        bottom: SizeConfig.blockSizeVertical! * 2.5
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 24,
                                    spreadRadius: 0,
                                    offset: Offset(0, 3),
                                    color: kDarkBlue.withOpacity(0.051)
                                )
                              ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              child: Image.network(
                                'https://ik.imagekit.io/tvlk/blog/2021/08/boracay-shutterstock_641355409.png?tr=dpr-2,w-675',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'News: Politics',
                                  style: kPoppinsRegular.copyWith(
                                    color: kDarkBlue,
                                    fontSize: SizeConfig.blockSizeHorizontal! * 2
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Text(
                                  'Iran\'s raging protests Fifth Iranian paramilitary me....',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: kPoppinsSemiBold.copyWith(
                                      color: kDarkBlue,
                                      fontSize: SizeConfig.blockSizeHorizontal! * 3
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/calendar_icon.svg'),
                                        SizedBox(
                                          width: SizeConfig.blockSizeHorizontal! * 1,
                                        ),
                                        Text(
                                          '16th May',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig.blockSizeHorizontal! * 3
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/time_icon.svg'),
                                        SizedBox(
                                          width: SizeConfig.blockSizeHorizontal! * 1,
                                        ),
                                        Text(
                                          '09 : 32 AM',
                                          style: kPoppinsRegular.copyWith(
                                              color: kGrey,
                                              fontSize: SizeConfig.blockSizeHorizontal! * 3
                                          ),
                                        )
                                      ],
                                    ),
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
              ),
              SizedBox(
                width: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Popular From Elly',
                    style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal! * 2.5
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        child: Image.network(
                          'https://awsimages.detik.net.id/community/media/visual/2022/03/21/ilustrasi-objek-wisata-pantai.jpeg?w=1200',
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
