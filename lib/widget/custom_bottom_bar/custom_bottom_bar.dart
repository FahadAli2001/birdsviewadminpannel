import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  bool isHoveredText = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            child: Row(
              children: [
                Text(
                  'Copyright © 2024',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.015),
                ),
                const SizedBox(
                  width: 10,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHoveredText = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHoveredText = false;
                    });
                  },
                  child: GestureDetector(
                    child: Text(
                      'Birds View.',
                      style: TextStyle(
                        color: isHoveredText
                            ? Colors.blue.shade800
                            : Colors.blue.shade600,
                        fontSize: size.width * 0.015,
                        fontWeight: FontWeight.bold,
                        decoration: isHoveredText
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'All rights reserved.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.015),
                ),
              ],
            ),
          );
        }

        if (sizingInformation.isMobile) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            child: Row(
              children: [
                Text(
                  'Copyright © 2024',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.035),
                ),
                const SizedBox(
                  width: 10,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHoveredText = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHoveredText = false;
                    });
                  },
                  child: GestureDetector(
                    child: Text(
                      'Birds View.',
                      style: TextStyle(
                        color: isHoveredText
                            ? Colors.blue.shade800
                            : Colors.blue.shade600,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                        decoration: isHoveredText
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'All rights reserved.',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.035),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
