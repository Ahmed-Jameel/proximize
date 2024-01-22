import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proximize/core/resources/routes_manager.dart';
import 'core/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: GoRouting.router,
          theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}


/*return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );*/