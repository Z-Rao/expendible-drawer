import 'package:abc/Drawer/cus_list_tile.dart';
import 'package:abc/Drawer/drawer_header.dart';
import 'package:abc/Drawer/footer_drawer.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isColapse = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.black,
        ),
        duration: const Duration(milliseconds: 678),
        height: 600,
        width: _isColapse ? 270 : 62,
        margin: const EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeaderr(isColapse: _isColapse),
            const Divider(
              color: Colors.white,
              thickness: 1.2,
              indent: 15,
              endIndent: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            SafeArea(
              child: CusListTile(
                icon: Icons.home,
                isColapse: _isColapse,
                title: 'Home',
                infoCount: 0,
                doHaveMore: false,
              ),
            ),
            SafeArea(
              child: CusListTile(
                icon: Icons.calendar_today_outlined,
                infoCount: 0,
                title: 'Calendar',
                isColapse: _isColapse,
                doHaveMore: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CusListTile(
                icon: Icons.notifications,
                infoCount: 4,
                isColapse: _isColapse,
                title: 'Notification',
                doHaveMore: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CusListTile(
                icon: Icons.message,
                infoCount: 2,
                isColapse: _isColapse,
                title: 'Messages',
                doHaveMore: true,
              ),
            ),
            const SizedBox(
              height: 53,
            ),
            CusListTile(
              icon: Icons.settings,
              infoCount: 0,
              isColapse: _isColapse,
              title: 'Settings',
              doHaveMore: false,
            ),
            CusListTile(
              icon: Icons.feedback,
              infoCount: 0,
              isColapse: _isColapse,
              title: 'Feedback',
              doHaveMore: false,
            ),
            CusListTile(
              icon: Icons.info,
              infoCount: 0,
              isColapse: _isColapse,
              title: 'About',
              doHaveMore: false,
            ),
            const SizedBox(
              height: 42,
            ),
            FooterDrawer(isColapse: _isColapse),
            const SizedBox(
              height: 36,
            ),
            Align(
              alignment:
                  _isColapse ? Alignment.bottomRight : Alignment.bottomRight,
              child: IconButton(
                icon: Icon(
                  !_isColapse ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isColapse = !_isColapse;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
