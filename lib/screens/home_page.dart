import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_typicode_users/common/enum/enum_api.dart';
import 'package:network_typicode_users/common/service/network_service.dart';
import 'package:network_typicode_users/screens/user_info.dart';

import '../common/model/users/user.dart';
import '../common/parser/parser.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final response =
        await network.get(TypiCodeApi.typicodeUrl, TypiCodeApi.user.path);
    users = Parser.parseAllUser(response);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserInfo(),
                settings: RouteSettings(
                  arguments: users[index],
                  name: "user_info/",
                ),
              ),
            );
          },
          leading: const Icon(CupertinoIcons.person_alt_circle,size: 40,),
          title: Text(users[index].name),
          subtitle: Text(users[index].email),
          trailing: const Icon(CupertinoIcons.chevron_right),
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 2,
        ),
        itemCount: users.length,
      ),
    );
  }
}
