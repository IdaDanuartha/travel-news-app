import 'package:flutter/material.dart';
import 'package:travel_news/size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Profile Page', style: TextStyle(fontSize: SizeConfig.blockSizeHorizontal! * 5),),
    );
  }
}
