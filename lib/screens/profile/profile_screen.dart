import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final String profileUrl =
      "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
  final List accountList = [
    "Account Details",
    "Loyalty card & offers",
    "Notifications",
    "Delivery Information",
    "Payment Information",
    "Language",
    "Privacy Settings"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: kThirdColor),
        ),
        automaticallyImplyLeading: false,
      ),
      body: getbodyProfile(),
    );
  }

  Widget getbodyProfile() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daniel",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Member Since 2021",
                    style: TextStyle(
                        fontSize: 13, color: kBlackColor.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          "EDIT ACCOUNT",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.box,
                    color: kBlackColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: kBlackColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Address",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.cog,
                    color: kBlackColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Setttings",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: List.generate(accountList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          accountList[index],
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kBlackColor.withOpacity(0.5),
                          size: 17,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.grey.withOpacity(0.8),
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
