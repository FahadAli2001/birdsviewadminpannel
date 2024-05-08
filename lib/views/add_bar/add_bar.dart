import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/CustomTextField/custom_textfield.dart';
import '../../widget/custom_bottom_bar/custom_bottom_bar.dart';
import '../../widget/custom_drawer/custom_closed_drawer.dart';
import '../../widget/custom_drawer/custom_open_drawer.dart';

class AddBar extends StatefulWidget {
  const AddBar({super.key});

  @override
  State<AddBar> createState() => _AddBarState();
}

class _AddBarState extends State<AddBar> {
  bool drawer = false;
  bool isHoveredText = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 1.3,
            ),
            //
            Positioned(
                top: 0,
                left: 0,
                child: drawer == true
                    ? const CustomClosedDrawer()
                    : const CustomOpenDrawer()),
            //
            Positioned(
              top: 0,
              left: drawer == true ? size.width * 0.1 : size.width * 0.2,
              child: Container(
                width: drawer == true ? size.width * 0.9 : size.width * 0.8,
                height: size.height * 0.085,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.2,
                        child: ListTile(
                          onTap: () {
                            if (drawer == true) {
                              drawer = false;
                              setState(() {});
                            } else {
                              drawer = true;
                              setState(() {});
                            }
                          },
                          leading: Icon(
                            CupertinoIcons.square,
                            color: Colors.grey.shade800,
                            size: size.width * 0.015,
                          ),
                          title: Text(
                            'Home',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          width: size.width * 0.07,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue.shade600),
                          child: const Center(
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Positioned(
                top: size.height * 0.085,
                left: drawer == true ? size.width * 0.1 : size.width * 0.2,
                child: Container(
                  width: drawer == true ? size.width * 0.9 : size.width * 0.8,
                  height: size.height * 1.117,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.015,
                        vertical: size.height * 0.015),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300)),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.blue.shade600,
                              width: size.width,
                              child: const Text(
                                'Quick Example',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            //
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            //

                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.015,
                                    vertical: size.height * 0.015),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Image : ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          width: size.width * 0.09,
                                          height: size.height * 0.055,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade700),
                                              color: Colors.grey.shade300),
                                          child: Center(
                                              child: Text(
                                            'Choose File',
                                            style: TextStyle(
                                                color: Colors.grey.shade900,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        const Text(
                                          ' No File Choosen . ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Title',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    const Text(
                                      'Latitude',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    //
                                    const Text(
                                      'Longtitude',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    //
                                    const Text(
                                      'FaceBook',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    const Text(
                                      'Instagram',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    const Text(
                                      'Twitter',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ' '),
                                    //
                                    const Text(
                                      'Description',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ''),
                                    //
                                    const Text(
                                      'Specification',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    const CustomTextField(hintText: ''),
                                    //

                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: size.width * 0.09,
                                          height: size.height * 0.055,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade700),
                                              color: Colors.grey.shade300),
                                          child: Center(
                                              child: Text(
                                            'Choose File',
                                            style: TextStyle(
                                                color: Colors.grey.shade900,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        const Text(
                                          ' No File Choosen . ',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.009,
                                        ),
                                        Container(
                                          width: size.width * 0.09,
                                          height: size.height * 0.055,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade900),
                                              color: Colors.grey.shade300),
                                          child: Center(
                                              child: Text(
                                            'Remove',
                                            style: TextStyle(
                                                color: Colors.grey.shade900,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                    //
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    //
                                    Container(
                                      width: size.width * 0.1,
                                      height: size.height * 0.055,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade900),
                                          color: Colors.grey.shade300),
                                      child: Center(
                                          child: Text(
                                        'Add Specification',
                                        style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            //
                            Container(
                              padding: const EdgeInsets.all(10),
                              color: Colors.grey.shade300,
                              width: size.width,
                              height: size.height * 0.09,
                              child: Row(
                                children: [
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      width: size.width * 0.1,
                                      decoration: BoxDecoration(
                                          color: Colors.blue.shade600,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Center(
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            //
            //
            Positioned(
              bottom: 0,
              left: drawer == true ? size.width * 0.1 : size.width * 0.2,
              child: Container(
                  width: drawer == true ? size.width * 0.9 : size.width * 0.8,
                  height: size.height * 0.085,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade400)),
                  child: const CustomBottomBar()),
            ),
          ],
        ),
      ),
    );
  }
}
