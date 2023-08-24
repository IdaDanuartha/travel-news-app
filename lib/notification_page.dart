import 'package:flutter/material.dart';
import 'package:travel_news/size_config.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Notification Page', style: TextStyle(fontSize: SizeConfig.blockSizeHorizontal! * 5),),
    );
  }
}
