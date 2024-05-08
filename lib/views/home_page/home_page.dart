import 'package:birdsviewadminpannel/views/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Card(
              elevation: 6,
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.45,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              ),
            ),
            Positioned(
              top: size.height * 0.010,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.445,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.all(size.height * 0.02),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
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
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Divider(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        'Sign In To Start Your Session',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      SizedBox(
                        width: size.width,
                        height: size.height * 0.05,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.01),
                          child: const TextField(
                             cursorColor: Colors.grey,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.grey),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                suffixIcon: Icon(CupertinoIcons.mail,
                                    color: Colors.grey)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.01),
                        child: SizedBox(
                          width: size.width,
                          height: size.height * 0.05,
                          child: const TextField(
                            cursorHeight: 5,
                            cursorColor: Colors.grey,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.grey),
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                                hoverColor: Colors.grey,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                suffixIcon:
                                    Icon(Icons.password, color: Colors.grey)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Checkbox(value: true, onChanged: (val) {}),
                                   
                                    Text(
                                    'Remember Me',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.height * 0.025,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)
                                =>const DashBoard()));
                              },
                              child: Card(
                                elevation: 5,
                                child: Container(
                                  width: size.width * 0.09,
                                  height: size.height  * 0.06 ,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue.shade600
                                  ),
                                  child:const Center(
                                    child: Text('Sign In',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
