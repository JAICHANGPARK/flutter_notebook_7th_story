import 'package:flutter/material.dart';

class HomeDetailPage extends StatefulWidget {

  final List<String> imgItems;

  HomeDetailPage(this.imgItems);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              Text("Luxurious, quiet and modern 4.5 room apartment", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              ListTile(
                title: Text("Cold rent"),
                trailing: Text("3,400 \$"),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                title: Text("Cold rent"),
                trailing: Text("3,400 \$"),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                title: Text("Cold rent"),
                trailing: Text("3,400 \$"),
              ),
              Divider(color: Colors.grey,),
              ListTile(
                title: Text("Cold rent"),
                trailing: Text("3,400 \$"),
              ),
              Divider(color: Colors.grey,),
            ],
          ),
        ),
      ),


    );
  }
}
