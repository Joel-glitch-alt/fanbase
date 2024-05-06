import 'package:flutter/material.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({Key? key}) : super(key: key);

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  bool firstCheckboxValue = false;
  bool secondCheckboxValue = false;

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
              Navigator.pushNamed(context, '/collection');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.only(top: 5),
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(49, 18, 134, 0.188),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      ),
                    ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(92, 34, 69, 227),
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                'No. of Votes',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: firstCheckboxValue,
                      onChanged: (value) {
                        setState(() {
                          firstCheckboxValue = value!;
                        });
                      },
                    ),
                    const Text(
                      "V CASH :",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      " 2000",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                //
                const SizedBox(width: 5),
                Row(
                  children: [
                    Checkbox(
                      value: secondCheckboxValue,
                      onChanged: (value) {
                        setState(() {
                          secondCheckboxValue = value!;
                        });
                      },
                    ),
                    const Text(
                      "BFV :",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      " 2000",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
