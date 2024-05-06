import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(92, 34, 69, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(92, 34, 69, 227),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/fanbase');
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(
                bottom: 40,
              ),
              child: const Text(
                "My Collections",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
          Center(
            child: Container(
              height: 450,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(251, 249, 250, 0.15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have no \nCollection",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.access_alarm_rounded,
                    size: 70,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Tab the plus icon to add",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text("data"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
