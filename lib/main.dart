import 'package:celebrare/controller/image_mask_controller.dart';
import 'package:celebrare/view/home.dart';
import 'package:celebrare/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ImageMaskController())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashScreen(),
        home: HomeScreen(),
      ),
    );
  }
}
