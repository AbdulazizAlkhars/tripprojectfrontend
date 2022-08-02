import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../providers/authprovider.dart';
// ignore_for_file: prefer_const_constructors

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child:

                        // context.read<UserProvider>().user!.image == null
                        //     ?

                        CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/images/story/cm7.jpeg'))

                    // : CircleAvatar(
                    //     radius: 50,
                    //     backgroundImage: NetworkImage(
                    //         '${context.read<UserProvider>().user!.image}')

                    ),
              ),
              InkWell(
                onTap: () {
                  context.push('/editprofile');
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.edit,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          // context.read<UserProvider>().user!.firstName.toString() +
          //     " " +
          //     context.read<UserProvider>().user!.lastName.toString()
          'uncoment the code to get the username',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Ubuntu-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10),
          child: ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text(
              'Username',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Ubuntu-Regular',
                fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            //get the user name from the UserProvider
            subtitle: Text(
              // context.read<UserProvider>().user!.username,
              "uncoment the code to get the username",
              style: TextStyle(
                  // color: Colors.black,
                  fontFamily: 'Ubuntu-Regular',
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.verified_user_outlined,
              // color: Colors.black,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: ListTile(
            title: Text(
              'First Name',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Ubuntu-Regular',
                fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            //get the first name and last name from the UserProvider
            subtitle: Text(
              //     context.read<UserProvider>().user!.lastName.toString()
              "uncoment the code to get the username",
              style: TextStyle(
                  // color: Colors.black,
                  fontFamily: 'Ubuntu-Regular',
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.edit,
              // color: Colors.black,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: ListTile(
            title: Text(
              'Last Name',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Ubuntu-Regular',
                fontWeight: FontWeight.bold,
                // color: Colors.black54
              ),
            ),
            subtitle: Text(
              //     context.read<UserProvider>().user!.lastName.toString()
              "uncoment the code to get the username",
              style: TextStyle(
                  // color: Colors.black,
                  fontFamily: 'Ubuntu-Regular',
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.edit,
              // color: Colors.black,
              size: 20,
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 10),
        //   child: ListTile(
        //     title: Text(
        //       'D.O.B',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Ubuntu-Regular',
        //         fontWeight: FontWeight.bold,
        //         // color: Colors.black54
        //       ),
        //     ),
        //     subtitle: Text(
        //       'Oct 20, 1999',
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         // color: Colors.black,
        //         fontFamily: 'Ubuntu-Regular',
        //       ),
        //     ),
        //     trailing: Icon(
        //       Icons.cake,
        //       // color: Colors.black,
        //       size: 20,
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 10),
        //   child: ListTile(
        //     title: Text(
        //       'Gender',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Ubuntu-Regular',
        //         fontWeight: FontWeight.bold,
        //         // color: Colors.black54
        //       ),
        //     ),
        //     subtitle: Text(
        //       'Male',
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontFamily: 'Ubuntu-Regular',
        //         // color: Colors.black,
        //       ),
        //     ),
        //     trailing: Icon(
        //       Icons.verified_user,
        //       // color: Colors.black,
        //       size: 20,
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 10.0),
        //   child: ListTile(
        //     title: Text(
        //       'Nationality',
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontFamily: 'Ubuntu-Regular',
        //         fontWeight: FontWeight.bold,
        //         // color: Colors.black54
        //       ),
        //     ),
        //     subtitle: Text(
        //       'German',
        //       style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontFamily: 'Ubuntu-Regular',
        //         // color: Colors.black,
        //       ),
        //     ),
        //     trailing: Icon(
        //       Icons.flag,
        //       // color: Colors.black,
        //       size: 20,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
