import 'package:birdsviewadminpannel/views/add_bar/add_bar.dart';
import 'package:birdsviewadminpannel/views/add_users/add_user.dart';
import 'package:birdsviewadminpannel/views/dashboard/dashboard.dart';
import 'package:birdsviewadminpannel/views/view_all_bars/view_all_bars.dart';
import 'package:birdsviewadminpannel/views/view_all_user/view_all_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Drawer(
        child: Container(
      height: size.height,
      width: size.width,
      color: Colors.grey.shade800,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05, horizontal: size.width * 0.05),
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
                SizedBox(width: size.width * 0.03),
                Text(
                  'Birds View',
                  style: TextStyle(
                      color: Colors.white, fontSize: size.height * 0.025),
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
                SizedBox(width: size.width * 0.03),
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
            ListTile(
              onTap: () {},
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

            SizedBox(height: size.height * 0.01),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddUsers()));
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
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewAllUsers()));
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

            ListTile(
              onTap: () {},
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

            //
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddBar()));
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

            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewAllBars()));
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

            ListTile(
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
           const Spacer(),
           Card(
                  elevation: 5,
                  child: Container(
                    width: size.width ,
                    height: size.height * 0.04,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue.shade600),
                    child: const Center(
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    ));
  }
}
