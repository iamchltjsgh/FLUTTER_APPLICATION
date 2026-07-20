import 'package:flutter/material.dart';
import 'package:flutter_application/features/web/Desktop_body.dart';
import 'package:flutter_application/features/web/mobile_body.dart';
import 'package:flutter_application/features/web/responsive.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: DesktopBody(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
