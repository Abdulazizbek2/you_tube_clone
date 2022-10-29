import 'package:flutter/material.dart';
import 'package:you_tube_clone/pages/home/home_page.dart';
import 'package:you_tube_clone/services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await APIService.instance.fetchChannel(channelId: 'UC6Dy0rQ6zDnQuHQ1EeErGUA');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Yotube api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomaPage(),
    );
  }
}
