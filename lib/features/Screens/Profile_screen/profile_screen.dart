import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/playerinfo');
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.space,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'UserName/NickName',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'ID: A123AB34HJHH',
                style: TextStyle(fontSize: 17),
              ),
              const Text('Artist/Judge'),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(height: 50),
              Container(
                //height: 100,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: [
                    _buildContainer(
                      Icons.group,
                      Colors.grey.withOpacity(0.5),
                      const Text('32,789'),
                      const Text(
                        'Followers',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    _buildContainer(
                      Icons.collections,
                      Colors.grey.withOpacity(0.5),
                      const Text('203'),
                      const Text(
                        'collections',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    _buildContainer(
                      Icons.thumb_up,
                      Colors.grey.withOpacity(0.5),
                      const Text('Likes'),
                      const Text(
                        '42,896',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    _buildContainer(
                      Icons.badge,
                      Colors.grey.withOpacity(0.5),
                      const Text('16'),
                      const Text(
                        'Rewards',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(
    IconData iconData,
    Color color,
    Widget mainText,
    Widget subText1,
    //Widget subText2,
  ) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      // height: 700,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            iconData,
            size: 60,
            color: const Color.fromARGB(255, 174, 54, 45),
          ),
          const SizedBox(height: 8),
          mainText,
          const SizedBox(height: 4),
          subText1,
          const SizedBox(height: 4),
          //subText2,
        ],
      ),
    );
  }
}
