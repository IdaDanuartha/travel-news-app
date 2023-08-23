import 'package:flutter/material.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  runApp(
      const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
    );
  }
}

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
                    color: kLihtBlue,
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
          SizedBox(
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
          SizedBox(
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
                  padding: EdgeInsets.only(
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
        ],
      ),
    );
  }
}