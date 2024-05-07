import 'package:birdsviewadminpannel/widget/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:birdsviewadminpannel/widget/custom_drawer/custom_closed_drawer.dart';
import 'package:birdsviewadminpannel/widget/custom_drawer/custom_open_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
                      Container(
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
                  height: size.height * 1.3,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.015,
                        vertical: size.height * 0.015),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: size.height * 0.04,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
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
                                        'Home',
                                        style: TextStyle(
                                          color: isHoveredText
                                              ? Colors.blue.shade800
                                              : Colors.blue.shade600,
                                          fontSize: size.height * 0.025,
                                          fontWeight: FontWeight.bold,
                                          decoration: isHoveredText
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Text(
                                    ' / Dashboard',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: size.height * 0.025,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        //

                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                child: Container(
                                  height: size.height * 0.4,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        color: Colors.grey.shade200,
                                        width: size.width,
                                        child: const Text(
                                          'Total Bars Count',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('6',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      size.height * 0.03)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                child: Container(
                                  height: size.height * 0.4,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        color: Colors.grey.shade200,
                                        width: size.width,
                                        child: const Text(
                                          'Total Users Count',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('7',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      size.height * 0.03)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        //
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        //
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                child: Container(
                                  height: size.height * 0.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        color: Colors.grey.shade200,
                                        width: size.width,
                                        child: const Text(
                                          'Onilne Bars',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: size.width,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: ListView(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          children: [
                                            DataTable(
                                              columns: const [
                                                DataColumn(
                                                    label: Text(
                                                  'Bar',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text('Description',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                                DataColumn(
                                                    label: Text('Latitude',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                                DataColumn(
                                                    label: Text('Longitude',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                              ],
                                              rows: const [
                                                DataRow(cells: [
                                                  DataCell(
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'assets/logo.png'),
                                                          radius: 20,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text('XYZ'),
                                                      ],
                                                    ),
                                                  ),
                                                  DataCell(Text(
                                                      'Laboris deleniti ess')),
                                                  DataCell(Text('12343')),
                                                  DataCell(Text('-98979832')),
                                                ]),
                                                DataRow(cells: [
                                                  DataCell(
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  'assets/logo.png'),
                                                          radius: 20,
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text('XYZ'),
                                                      ],
                                                    ),
                                                  ),
                                                  DataCell(Text(
                                                      'Laboris deleniti ess')),
                                                  DataCell(Text('12343')),
                                                  DataCell(Text('-98979832')),
                                                ]),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.grey.shade300),
                                ),
                                child: Container(
                                  height: size.height * 0.5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        color: Colors.grey.shade200,
                                        width: size.width,
                                        child: const Text(
                                          'Online Store Overview',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                                CupertinoIcons.arrow_clockwise,
                                                color: Colors.green),
                                            SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                          CupertinoIcons
                                                              .arrow_up,
                                                          color: Colors.green),
                                                      Text(
                                                        '12 %',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                size.height *
                                                                    0.025,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'CONVERSION RATE',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          size.height * 0.025,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: SizedBox(
                                          width: size.width,
                                          child: Divider(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                      ),
                                      //
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                                CupertinoIcons.shopping_cart,
                                                color: Colors.green),
                                            SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                          CupertinoIcons
                                                              .arrow_up,
                                                          color: Colors.yellow),
                                                      Text(
                                                        '0.8 %',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                size.height *
                                                                    0.025,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'SALES RATE',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          size.height * 0.025,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: SizedBox(
                                          width: size.width,
                                          child: Divider(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                      ),
                                      //
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(CupertinoIcons.person_2,
                                                color: Colors.red),
                                            SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                          CupertinoIcons
                                                              .arrow_down,
                                                          color: Colors.red),
                                                      Text(
                                                        '1 %',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                size.height *
                                                                    0.025,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'REGISTRATION RATE',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          size.height * 0.025,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: SizedBox(
                                          width: size.width,
                                          child: Divider(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
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
                child:const CustomBottomBar()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
