import 'dart:math';
import 'package:flutter/material.dart';

class Nav3dApp extends StatelessWidget {
  const Nav3dApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nav3dHome(),
    );
  }
}

class Nav3dHome extends StatefulWidget {
  const Nav3dHome({super.key});

  @override
  State<Nav3dHome> createState() => Nav3DHomeState();
}

class Nav3DHomeState extends State<Nav3dHome> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade800,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                            "https://mighty.tools/mockmind-api/content/human/49.jpg",
                            scale: 50,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "Eren Jager",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                onTap: () {},
                                leading: const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  "Profile",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  "Settings",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  "Logout",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: const Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text("3d Drawer Mmenu"),
                    ),
                    body: const Center(
                      child: Text("Swipe right to open the menu "),
                    ),
                  ),
                ));
              }),
          GestureDetector(
            /*onTap: () {
              setState(() {
                value == 0 ? value = 1 : value = 0;
              });
            },*/
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}
