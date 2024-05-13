import 'package:flutter/material.dart';
import 'package:Book_Shelf/login.dart';
import 'package:Book_Shelf/language.dart';
import 'package:Book_Shelf/main.dart';
import 'package:Book_Shelf/profile.dart';
import 'package:Book_Shelf/Myads.dart'; // Import the MyAds screen

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 5),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const Profile();
                  }));
                },
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f0e5),
                    ),
                    child: const Icon(
                      Icons.person_pin,
                      color: Color(0xff601719),
                    ),
                  ),
                  title: const Text(
                    "View and edit profile",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text(
                    "Enter your personal information",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const Language();
                  }));
                },
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f0e5),
                    ),
                    child: const Icon(
                      Icons.language,
                      color: Color(0xff601719),
                    ),
                  ),
                  title: const Text(
                    "Change language",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 25,
                    color: Color(0xff601719),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return MyAdsPage(); // Navigate to the MyAds screen
                  }));
                },
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f0e5),
                    ),
                    child: const Icon(
                      Icons.ads_click_rounded,
                      color: Color(0xff601709),
                    ),
                  ),
                  title: const Text(
                    "My ADS",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,

                    size: 25,
                    color: Color(0xff601719),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
