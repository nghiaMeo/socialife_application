import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:social_networking_app/core/configs/theme/app_theme.dart';
import 'package:social_networking_app/core/navigation/app_router.dart';
import 'package:social_networking_app/core/navigation/app_routes.dart';
import 'package:social_networking_app/presentation/auth/presentation/provider/checkbox_provider.dart';

import 'core/navigation/navigation_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CheckboxProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Networking App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: AppRoutes.introduce,
      routes: AppRouter.routes,
      // home: const IntroducePage(),
    );
  }
}
