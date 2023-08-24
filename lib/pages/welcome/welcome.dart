import 'package:flutter/material.dart';
import 'package:reception_app/pages/login/widgets/buttonRounded.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
          Icon(Icons.search, color: Colors.white),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_filled)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.plus_one_rounded)),
        BottomNavigationBarItem(
            label: "", icon: Icon(Icons.content_paste_go_outlined))
      ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Hello Usuario",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              RoundedButton(
                  backgroundColor: const Color.fromARGB(255, 33, 124, 243),
                  size: const Size(150, 40),
                  label: const Text("Warehouse",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700)),
                  radius: 30,
                  textColor: Colors.white,
                  onClick: () {}),
              RoundedButton(
                  backgroundColor: Colors.transparent,
                  size: const Size(150, 40),
                  label: const Text("Recent Outlings",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w700)),
                  radius: 30,
                  textColor: Colors.white,
                  onClick: () {})
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: RoundedButton(
                    backgroundColor: const Color.fromARGB(255, 33, 124, 243),
                    size: const Size(380, 120),
                    label: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text("Local Pending sent    10/11",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          Text(
                              "Pending upload the cloud TruckTrack. Will be uploaded when a good network connection is detect.",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey))
                        ],
                      ),
                    ),
                    radius: 25,
                    textColor: Colors.white,
                    onClick: () {}),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: RoundedButton(
                    backgroundColor: const Color.fromARGB(255, 77, 77, 77),
                    size: const Size(380, 120),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("Caja Seca 53ft",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                              const Text("4323567 | 1233656654",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                              RoundedButton(
                                  backgroundColor:
                                      const Color.fromARGB(255, 33, 124, 243),
                                  size: const Size(190, 30),
                                  label: const Text("10/05/2023 20:50",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                  radius: 13,
                                  textColor: Colors.white,
                                  onClick: () {})
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    radius: 25,
                    textColor: Colors.black,
                    onClick: () {}),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: RoundedButton(
                    backgroundColor: const Color.fromARGB(255, 77, 77, 77),
                    size: const Size(380, 120),
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("Caja Seca 53ft",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                              const Text("4323567 | 1233656654",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                              RoundedButton(
                                  backgroundColor:
                                      const Color.fromARGB(255, 33, 124, 243),
                                  size: const Size(190, 30),
                                  label: const Text("10/05/2023 20:50",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                  radius: 13,
                                  textColor: Colors.white,
                                  onClick: () {})
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    radius: 25,
                    textColor: Colors.black,
                    onClick: () {}),
              )
            ],
          )
        ]),
      ),
    );
  }
}
