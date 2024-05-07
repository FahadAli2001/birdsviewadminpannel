import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomClosedDrawer extends StatefulWidget {
  const CustomClosedDrawer({super.key});

  @override
  State<CustomClosedDrawer> createState() => _CustomClosedDrawerState();
}

class _CustomClosedDrawerState extends State<CustomClosedDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 1.3,
      width: size.width * 0.1,
      color: Colors.grey.shade800,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.005),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                width: size.width * 0.05,
                height: size.height * 0.05,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            //
            SizedBox(
              width: size.width,
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 0.5,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              width: size.width * 0.05,
              height: size.height * 0.05,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(CupertinoIcons.person),
            ),
            SizedBox(height: size.height * 0.015),
            //
            SizedBox(
              width: size.width,
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 0.5,
              ),
            ),
            SizedBox(height: size.height * 0.015),
            //
            Container(
              width: size.width,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(CupertinoIcons.square,
                  color: Colors.white, size: size.width * 0.015),
            ),
            SizedBox(height: size.height * 0.015),
            Icon(
              CupertinoIcons.square,
              color: Colors.white,
              size: size.height * 0.025,
            ),
            SizedBox(height: size.height * 0.015),
            Icon(
              CupertinoIcons.square,
              color: Colors.white,
              size: size.height * 0.025,
            ),
          ],
        ),
      ),
    );
  }
}
