import 'package:abc/Drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('Drawer'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),

            /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
            /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
            child: AnimSearchBar(
              style: const TextStyle(color: Colors.white),
              helpText: "Search...",
              color: Colors.black,
              width: 200,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
          ),
        ],
      ),
      body: const Center(),
      drawer: const SafeArea(
        child: CustomDrawer(),
      ),
    );
  }
}
