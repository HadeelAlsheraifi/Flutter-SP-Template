

import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'package:go_router/go_router.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white),
            onPressed: () => GoRouter.of(context).push("/"),
          ),
          title: const Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.save, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share, color: Colors.white),
              onPressed: () {},
            )
          ]),
      extendBody: true,
      bottomNavigationBar: const BottomNavBar(),
      body: const Image(
        image: NetworkImage(
            "https://i.pinimg.com/originals/e3/de/f1/e3def1384e1977ba40fef4d879d73de9.png"

            
            ),
      ),
    );

  }
}

