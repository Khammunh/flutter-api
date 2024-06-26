import 'package:api/core/helpers/dio_helpers.dart';
import 'package:flutter/material.dart';

import 'view/screen/screen_one.dart';

void main() async {
  await DioHelper.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}
