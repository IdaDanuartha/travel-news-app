import 'package:flutter/material.dart';
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
