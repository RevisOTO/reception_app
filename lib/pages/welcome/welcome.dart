import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(items: []),
      body: Column(children: [
        const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Home"),
          Icon(Icons.search),
          CircleAvatar(
            radius: 30,
          )
        ]),
        const Text("Hello Usuario"),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Warehouse")),
            ElevatedButton(
                onPressed: () {}, child: const Text("Recent Outings"))
          ],
        ),
        Container(
            child: Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Text("Caja Seca 53ft"),
                    Text(
                      "4323567 | 123365654",
                    ),
                    Container(
                      color: Color.fromARGB(255, 33, 124, 243),
                      child: Text("10/05/2023 20:50"),
                    )
                  ],
                ))
          ],
        )),
        Column(
          children: [
            Container(
                child: const Row(
              children: [],
            ))
          ],
        )
      ]),
    );
  }
}
