import 'package:flutter/material.dart';

class CusListTile extends StatelessWidget {

  const CusListTile({
    Key? key,
    required this.icon,
    required this.infoCount,
    required this.doHaveMore,
    required this.isColapse,
    required this.title,
  }) : super(key: key);
  final bool isColapse;
  final String title;
  final IconData icon;
  final int infoCount;
  final bool doHaveMore;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 578),
        height: 40,
        width: isColapse ? 280 : 62,
        child: Row(

          children: [
            Flex(direction: Axis.horizontal),
            Icon(
                icon,
                color: Colors.white,

            ),
            Expanded(
              child: Stack(
clipBehavior: Clip.none,
                children: [
                  if (infoCount > 0)
                    Positioned(

                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                      ),
                    ),

                ],
              ),
            ),
            if (isColapse)
              Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
            if (isColapse && infoCount > 0)
              Positioned(right: -4,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.purpleAccent,
                  ),
                  child: Center(
                    child: Text(
                      infoCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            if (isColapse)
           const Spacer(
             flex: 6,
           ),
            if (isColapse && doHaveMore == true)
              const ClipRect(
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
