import 'dart:math';

import 'package:flutter/material.dart';
List<String> posts = [];
class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {

  final formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  

  void updateList(value) {
    setState(() {
      posts.add(value);
    });
  }
  
   
  

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body: Container(
        
        margin: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [const SizedBox(height: 15),
              TextFormField (
              controller: textController,
              key: formKey,
              decoration: const InputDecoration(
                icon: Icon(Icons.travel_explore),
                labelText: 'Where is your next trip?',
                border: OutlineInputBorder(),
              ),
            
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              child: const Text('Submit', style: TextStyle(color: Colors.white, fontSize: 14)),
              
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  updateList(textController.text);
                  
                  textController.clear();
                  
                  

                  
                }
              },

            ),
            buildListView(posts),
            
            ],
          ),
          
      ),
      ),
    );
  }
}

Widget buildListView(list) {
  

  return Container (
    height: 1000.0 * list.length * 15,
    child: ListView.builder(
        itemBuilder: (context, index) {
        return ListTile(
          textColor: Colors.black,
          title: Text(list[index]),
      );
        
      
    },
        itemCount: list.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
}
