import 'package:flutter/material.dart';

class HomeDetailPage extends StatefulWidget {
  final List<String> imgItems;

  HomeDetailPage(this.imgItems);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  PageController _pageController = PageController();

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
                child: Stack(
                  children: [
                    Positioned(
                        child: PageView(
                      controller: _pageController,
                      children: [
                        ...widget.imgItems
                            .map(
                              (e) => Image.network(
                                e,
                                fit: BoxFit.cover,
                              ),
                            )
                            .toList()
                      ],
                    ))
                  ],
                ),
              ),
              Text(
                "Luxurious, quiet and modern 4.5 room apartment",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text("Cold rent"),
                trailing: Text("3,400 \$"),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text("Living space:"),
                trailing: Text("154m^2"),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text("Rooms:"),
                trailing: Text("4.5"),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Text("Total rent:"),
                trailing: Chip(label: Text("4,260\$"),),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
