import 'package:birdsviewadminpannel/views/add_bar/add_bar.dart';
import 'package:birdsviewadminpannel/views/add_users/add_user.dart';
import 'package:birdsviewadminpannel/views/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/view_all_user/view_all_user.dart';

class CustomOpenDrawer extends StatefulWidget {
  const CustomOpenDrawer({super.key});

  @override
  State<CustomOpenDrawer> createState() => _CustomOpenDrawerState();
}

class _CustomOpenDrawerState extends State<CustomOpenDrawer> {
  bool users = false;
  bool isUsersOpened = false;
  bool adduser = false;
  bool viewuser = false;
  bool bars = false;
  bool isBarsOpened = false;
  bool addbar = false;
  bool allbar = false;
  bool inactivebar = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 1.3,
      width: size.width * 0.2,
      color: Colors.grey.shade800,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01, horizontal: size.width * 0.005),
        child: Column(
          children: [
            Row(
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
                Text(
                  'Birds View',
                  style: TextStyle(
                      color: Colors.white, fontSize: size.height * 0.03),
                ),
              ],
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
            Row(
              children: [
                Container(
                  width: size.width * 0.05,
                  height: size.height * 0.05,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(CupertinoIcons.person),
                ),
                Text(
                  'Developer Zemfar',
                  style: TextStyle(
                      color: Colors.white, fontSize: size.height * 0.02),
                ),
              ],
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
              decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()));
                },
                leading: Icon(CupertinoIcons.square,
                    color: Colors.white, size: size.width * 0.015),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(CupertinoIcons.square,
                    color: Colors.white, size: size.width * 0.015),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Material(
              borderRadius: BorderRadius.circular(5),
              color: users ? Colors.grey.shade500 : Colors.grey.shade800,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    users = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    users = false;
                  });
                },
                child: ListTile(
                  onTap: () {
                    if (isUsersOpened == true) {
                      isUsersOpened = false;
                      setState(() {});
                    } else {
                      isUsersOpened = true;
                      setState(() {});
                    }
                  },
                  leading: Icon(
                    CupertinoIcons.square,
                    color: Colors.white,
                    size: size.width * 0.015,
                  ),
                  title: const Text(
                    'Users',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    CupertinoIcons.square,
                    color: Colors.white,
                    size: size.width * 0.015,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            isUsersOpened == true
                ? SizedBox(
                    child: Column(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(5),
                          color: adduser
                              ? Colors.grey.shade500
                              : Colors.grey.shade800,
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                adduser = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                adduser = false;
                              });
                            },
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddUsers()));
                              },
                              leading: Icon(
                                CupertinoIcons.square,
                                color: Colors.white,
                                size: size.width * 0.015,
                              ),
                              title: const Text(
                                'Add User',
                                style: TextStyle(color: Colors.white),
                              ),
                              
                            ),
                          ),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(5),
                          color: viewuser
                              ? Colors.grey.shade500
                              : Colors.grey.shade800,
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                viewuser = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                viewuser = false;
                              });
                            },
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ViewAllUsers()));
                              },
                              leading: Icon(
                                CupertinoIcons.square,
                                color: Colors.white,
                                size: size.width * 0.015,
                              ),
                              title: const Text(
                                'View All User',
                                style: TextStyle(color: Colors.white),
                              ),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            Material(
              borderRadius: BorderRadius.circular(5),
              color: bars ? Colors.grey.shade500 : Colors.grey.shade800,
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    bars = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    bars = false;
                  });
                },
                child: ListTile(
                  onTap: () {
                    if (isBarsOpened == true) {
                      isBarsOpened = false;
                      setState(() {});
                    } else {
                      isBarsOpened = true;
                      setState(() {});
                    }
                  },
                  leading: Icon(
                    CupertinoIcons.square,
                    color: Colors.white,
                    size: size.width * 0.015,
                  ),
                  title: const Text(
                    'Bars',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    CupertinoIcons.square,
                    color: Colors.white,
                    size: size.width * 0.015,
                  ),
                ),
              ),
            ),
            //
            isBarsOpened == true
                ? SizedBox(
                    child: Column(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(5),
                          color: addbar
                              ? Colors.grey.shade500
                              : Colors.grey.shade800,
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                addbar = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                addbar = false;
                              });
                            },
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddBar()));
                              },
                              leading: Icon(
                                CupertinoIcons.square,
                                color: Colors.white,
                                size: size.width * 0.015,
                              ),
                              title: const Text(
                                'Add Bar',
                                style: TextStyle(color: Colors.white),
                              ),
                              
                            ),
                          ),
                        ),
                         Material(
                          borderRadius: BorderRadius.circular(5),
                          color: allbar
                              ? Colors.grey.shade500
                              : Colors.grey.shade800,
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                allbar = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                allbar = false;
                              });
                            },
                            child: ListTile(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const AddUsers()));
                              },
                              leading: Icon(
                                CupertinoIcons.square,
                                color: Colors.white,
                                size: size.width * 0.015,
                              ),
                              title: const Text(
                                'All Bars',
                                style: TextStyle(color: Colors.white),
                              ),
                              
                            ),
                          ),
                        ),
                         Material(
                          borderRadius: BorderRadius.circular(5),
                          color: inactivebar
                              ? Colors.grey.shade500
                              : Colors.grey.shade800,
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                inactivebar = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                inactivebar = false;
                              });
                            },
                            child: ListTile(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const AddUsers()));
                              },
                              leading: Icon(
                                CupertinoIcons.square,
                                color: Colors.white,
                                size: size.width * 0.015,
                              ),
                              title: const Text(
                                'Inactive Bar',
                                style: TextStyle(color: Colors.white),
                              ),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
