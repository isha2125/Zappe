import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Accounts"),
        toolbarHeight: kToolbarHeight + 16,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
      ),
      backgroundColor: const Color(0xFFBBE9F4),
      body: const AccountList(),
    );
  }
}

class AccountList extends StatelessWidget {
  const AccountList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: const Text(
                  "User Detalis",
                ),
                trailing: const Icon(CupertinoIcons.person),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: const Text(
                  "Notifications",
                ),
                trailing: const Icon(CupertinoIcons.bell),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: const Text(
                  "Saved Locations",
                ),
                trailing: const Icon(CupertinoIcons.map_pin),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: const Text(
                  "Emergency Contacts",
                ),
                trailing: const Icon(CupertinoIcons.exclamationmark_triangle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                tileColor: Colors.white.withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                title: const Text(
                  "Payments",
                ),
                trailing: const Icon(CupertinoIcons.creditcard),
              ),
            ),
            const Spacer(),
            const Text(
              "get zapped to your destination.",
              style: TextStyle(fontSize: 24),
            ),
            Image.asset(
              'assets/Zappe_logo.png',
              height: 64,
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ));
  }
}
