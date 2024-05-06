import 'package:flutter/material.dart';

class ContestantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(92, 34, 69, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(92, 34, 69, 227),
        title: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.green,
              ),
              onPressed: () {
                // Implement search functionality
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                // Navigate to profile screen
                // Navigator.pushNamed(context, '/gifts');
                print('bbbbbbbbbbbb');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(49, 18, 134, 0.188),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Artist',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Artist Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Genre',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Votes',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text('8000', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          const Text(
            "Top 5",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                //color: const Color.fromARGB(69, 158, 158, 158),
                margin: const EdgeInsets.only(left: 15),
                width: double.maxFinite,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: double.maxFinite,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white30,
                              ),
                              child: const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1505968409348-bd000797c92e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D'),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Name Artist",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Container(
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Regions & Repsss",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 17),
          //   child: Container(
          //     child: const Align(
          //       alignment: Alignment.centerLeft,
          //       child: Text(
          //         "Region 1",
          //         style: TextStyle(color: Colors.white, fontSize: 17),
          //       ),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: const Color.fromARGB(69, 158, 158, 158),
                margin: const EdgeInsets.only(left: 15),
                width: double.maxFinite,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(
                                left: 8, right: 5, top: 5, bottom: 0),
                            title: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Artist Name',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1,
                            height: 0,
                          )
                        ],
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
