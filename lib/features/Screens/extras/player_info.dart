import 'package:flutter/material.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamed(context, '/subscription');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 4405,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1502236876560-243e78f715f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D'), // Provide the asset path directly
                  fit: BoxFit.cover,
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 150),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '26',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "LEVEON\n BELL",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "PITTSBURG STEELERS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "POSITION ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "OWNER ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "STATUS ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Stack(
            //   children: [
            //     Container(
            //       width: double.infinity,
            //       height: 70,
            //       decoration: const BoxDecoration(
            //         border: Border.fromBorderSide(
            //           BorderSide(color: Colors.grey, width: 1.0),
            //         ),
            //       ),
            //       child: const Column(
            //         children: [Text("data"), Text("data")],
            //       ),
            //     ),
            //     Positioned(
            //       left: MediaQuery.of(context).size.width / 3 -
            //           2, // Adjust position to center the lines
            //       child: Container(
            //         width: 1,
            //         height: 68,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     Positioned(
            //       right: MediaQuery.of(context).size.width / 3 - 1,
            //       child: Container(
            //         width: 1,
            //         height: 680,
            //         color: Colors.grey,
            //       ),
            //     ),
            //     //Container()
            //   ],
            // ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    // color: Colors.red,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('POS RK'), Text("2")],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    height: 80,
                    //color: Colors.green,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AVG PTS'),
                          Text(
                            ".",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    //color: Colors.blue,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('% OWN'), Text('99.9 (+0)')],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 15,
                ),
              ),
              child: const Center(
                  child: Text(
                "Can\'t Drop",
                style: TextStyle(fontSize: 22),
              )),
            )
          ],
        ),
      ),
    );
  }
}
