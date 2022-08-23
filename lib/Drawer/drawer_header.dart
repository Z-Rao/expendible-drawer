import 'package:flutter/material.dart';

class DrawerHeaderr extends StatelessWidget {
  final bool isColapse;
  const DrawerHeaderr({Key? key, required this.isColapse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 678),
        height: 50,
        child: Row(
          children: [
            const FlutterLogo(
              size: 30,
            ),
            if (isColapse)
              const SizedBox(
                width: 19,
              ),
            if (isColapse)
              const Expanded(
                flex: 3,
                child: Text(
                  'Rao',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            if (isColapse)
              const Expanded(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
