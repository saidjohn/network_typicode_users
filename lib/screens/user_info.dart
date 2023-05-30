import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/model/users/user.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.person_alt_circle,
              size: 80,
            ),
          ),
          const Divider(thickness: 2),
          Text(
            "Id: ${user.id}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Name: ${user.name}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Username: ${user.username}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Email: ${user.email}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Address: ${user.address}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Phone: ${user.phone}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Website: ${user.website}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),const Divider(thickness: 2),
          Text(
            "Company: ${user.company}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
