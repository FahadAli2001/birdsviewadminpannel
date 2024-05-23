import 'package:birdsviewadminpannel/widget/CustomTextField/custom_textfield.dart';
import 'package:birdsviewadminpannel/widget/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:birdsviewadminpannel/widget/custom_drawer/custom_app_drawer.dart';
import 'package:birdsviewadminpannel/widget/custom_drawer/custom_closed_drawer.dart';
import 'package:birdsviewadminpannel/widget/custom_drawer/custom_open_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AddUsers extends StatefulWidget {
  const AddUsers({super.key});

  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
  bool drawer = false;
  bool isHoveredText = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
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
                      width:
                          drawer == true ? size.width * 0.9 : size.width * 0.8,
                      height: size.height * 0.085,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.01),
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
                      left:
                          drawer == true ? size.width * 0.1 : size.width * 0.2,
                      child: Container(
                        width: drawer == true
                            ? size.width * 0.9
                            : size.width * 0.8,
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
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'First Name',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter first name'),
                                          //
                                          const Text(
                                            'Last Name',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter last name'),
                                          //
                                          //
                                          const Text(
                                            'Email',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter email'),
                                          //
                                          //
                                          const Text(
                                            'Password',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter password'),
                                          //
                                          const Text(
                                            'Date Of Birth',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'mm/dd/yyyy'),
                                          //
                                          const Text(
                                            'Gender',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter gender'),
                                          //
                                          const Text(
                                            'Platform',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          //
                                          const CustomTextField(
                                              hintText: 'Enter platform'),
                                          //
                                          Row(
                                            children: [
                                              const Text(
                                                'Select Image : ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                width: size.width * 0.09,
                                                height: size.height * 0.055,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .grey.shade700),
                                                    color:
                                                        Colors.grey.shade300),
                                                child: Center(
                                                    child: Text(
                                                  'Choose File',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade900,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              const Text(
                                                ' No File Choosen . ',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: size.height * 0.02,
                                          ),
                                          Row(
                                            children: [
                                              Checkbox(
                                                  value: true,
                                                  onChanged: (onChanged) {}),
                                              const Text(
                                                ' Check Me Out ',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          )
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
                        width: drawer == true
                            ? size.width * 0.9
                            : size.width * 0.8,
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

        if (sizingInformation.isMobile) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 5,
              automaticallyImplyLeading: false,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.menu, color: Colors.grey.shade600),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              centerTitle: false,
              title: Text(
                'Add Users',
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            drawer: const CustomAppDrawer(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.01,
                            vertical: size.height * 0.015),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //

                                SizedBox(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03,
                                        vertical: size.height * 0.015),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'First Name',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter first name'),
                                        //
                                        const Text(
                                          'Last Name',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter last name'),
                                        //
                                        //
                                        const Text(
                                          'Email',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter email'),
                                        //
                                        //
                                        const Text(
                                          'Password',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter password'),
                                        //
                                        const Text(
                                          'Date Of Birth',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'mm/dd/yyyy'),
                                        //
                                        const Text(
                                          'Gender',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter gender'),
                                        //
                                        const Text(
                                          'Platform',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        //
                                        const CustomTextField(
                                            hintText: 'Enter platform'),
                                        //
                                        Row(
                                          children: [
                                            const Text(
                                              'Select Image : ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: size.width * 0.25,
                                              height: size.height * 0.05,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.grey.shade700),
                                                  color: Colors.grey.shade300),
                                              child: Center(
                                                  child: Text(
                                                'Choose File',
                                                style: TextStyle(
                                                    color: Colors.grey.shade900,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                                value: true,
                                                onChanged: (onChanged) {}),
                                            const Text(
                                              ' Check Me Out ',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                //
                                const Spacer(),
                                //
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                  ),
                                  width: size.width,
                                  height: size.height * 0.07,
                                  child: Row(
                                    children: [
                                      Card(
                                        elevation: 5,
                                        child: Container(
                                          width: size.width * 0.3,
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
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
                width: size.width,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400)),
                child: const CustomBottomBar()),
          );
        }
        return const SizedBox();
      },
    );
  }
}
