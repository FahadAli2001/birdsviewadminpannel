import 'package:birdsviewadminpannel/widget/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widget/custom_drawer/custom_closed_drawer.dart';
import '../../widget/custom_drawer/custom_open_drawer.dart';

class ViewAllUsers extends StatefulWidget {
  const ViewAllUsers({super.key});

  @override
  State<ViewAllUsers> createState() => _ViewAllUsersState();
}

class _ViewAllUsersState extends State<ViewAllUsers> {
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
                height: size.height * 1.117,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
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
                            'All Users',
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
                                  ' / All Users',
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
                      //
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            DataTable(
                              columns: const [
                                DataColumn(
                                    label: Text(
                                  'Id',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text('User Name',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                DataColumn(
                                    label: Text('Image',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                DataColumn(
                                    label: Text('Email',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                             DataColumn(
                                    label: Text('Role',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                             DataColumn(
                                    label: Text('Edit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                             DataColumn(
                                    label: Text('Delete',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                              ],
                              rows:   [
                                DataRow(
                                  cells: [
                                  const  DataCell(Text('1')),
                                 const   DataCell(Text('User 1')),
                               const   DataCell(
                                    
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage('assets/logo.png'),
                                      radius: 20,
                                    ),
                                  ),
                               const   DataCell(Text('user@gmail.com')),
                                  DataCell(Container(
                                   margin:const EdgeInsets.all(5),
                                    height: size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child:const Center(child: Text("Appoint As Admin",
                                    style: TextStyle(color: Colors.white),)),
                                  )),
                               const   DataCell(Icon(CupertinoIcons.square_pencil_fill,color:Colors.blue)),
                               const   DataCell(Icon(CupertinoIcons.delete_solid,color:Colors.red)),
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
