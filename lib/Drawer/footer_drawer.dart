import 'package:flutter/material.dart';

class FooterDrawer extends StatelessWidget {
  final bool isColapse;
  const FooterDrawer({Key? key, required this.isColapse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 678,
      ),
      height: 60,
      width: isColapse ? 250 : 48,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        color: Colors.white54,
      ),
      child: Expanded(
        child: Row(

          children: [

         const   CircleAvatar(
              radius: 23,
             backgroundImage:AssetImage('assets/rao.jpg'),
            ),
            if (isColapse)
              const SizedBox(
                width: 15,
              ),
            if (isColapse)
              const Text(
                'UserName',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (isColapse)
             const Spacer(
                  flex: 3,
                ),

            if (isColapse)
              const    Padding(
                padding: EdgeInsets.fromLTRB(0,0,7,0),
                child:  Expanded(
                  child: Icon(
                    Icons.logout,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
