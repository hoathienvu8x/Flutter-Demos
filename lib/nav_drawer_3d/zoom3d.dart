import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ZoomDrawerApp extends StatelessWidget {
  const ZoomDrawerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SliderAnimated(),
      home: Zoom3DDrawer(),
    );
  }
}

class Zoom3DDrawer extends StatefulWidget {
  const Zoom3DDrawer({super.key});

  @override
  State<Zoom3DDrawer> createState() => Zoom3DDrawerState();
}

class Zoom3DDrawerState extends State<Zoom3DDrawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.style1,
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      borderRadius: 40.0,
      showShadow: true,
      angle: -12.0,
      menuBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * .65,
      openCurve: Curves.easeIn,
      closeCurve: Curves.easeInOut,
    );
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
      ),
      body: null,
    );
  }
}
