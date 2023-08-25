import 'package:flutter/material.dart';
import 'package:reception_app/pages/login/widgets/buttonRounded.dart';
import 'package:reception_app/pages/profile/widgets/containerInput.dart';

import '../../globals/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
      print(isSwitched);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
      child: Container(
        alignment: Alignment.center,
        child: Column(children: [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Usuario",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
          ),
          const Text(
            "unemailtodofalsote@gmail.com",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RoundedButton(
                backgroundColor: primaryColorBtn,
                size: const Size(190, 60),
                label: const Text("Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    )),
                radius: 80,
                onClick: () {}),
          ),
          Text(
            "Configuration",
            style: categoriesText,
          ),
          ContainerInput(
            input: Switch(value: isSwitched, onChanged: toggleSwitch),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Turn on Notifications", style: optionsText),
            ),
            padding: 10,
          ),
          ContainerInput(
              input: Switch(value: isSwitched, onChanged: toggleSwitch),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Turn on Notifications",
                  style: optionsText,
                ),
              ),
              padding: 10),
          Text(
            "Link Account",
            style: categoriesText,
          ),
          ContainerInput(
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Generate QR Link",
                  style: optionsText,
                ),
              ),
              input: RoundedButton(
                  backgroundColor: primaryColorBtn,
                  size: const Size(100, 20),
                  label: const Text("Share"),
                  radius: 30,
                  onClick: () {}),
              padding: 10),
          TextButton(
              onPressed: () {},
              child: Text(
                "Log Out",
                style: categoriesText,
              ))
        ]),
      ),
    );
  }
}
