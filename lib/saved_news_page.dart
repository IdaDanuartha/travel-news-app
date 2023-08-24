import 'package:flutter/material.dart';
import 'package:travel_news/size_config.dart';

class SavedNewsPage extends StatelessWidget {
  const SavedNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Saved News Page', style: TextStyle(fontSize: SizeConfig.blockSizeHorizontal! * 5),),
    );
  }
}
