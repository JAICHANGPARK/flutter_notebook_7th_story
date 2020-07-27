import 'package:flutter/material.dart';
import 'package:flutter_notebook_7th_story/ep523_freelance_app/top_badges.dart';

class FreelanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FreelanceMainScreen(),
    );
  }
}

class FreelanceMainScreen extends StatefulWidget {
  @override
  _FreelanceMainScreenState createState() => _FreelanceMainScreenState();
}

class _FreelanceMainScreenState extends State<FreelanceMainScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: TopBadgesItem(),
              )
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning,",style: TextStyle(
                            fontSize: 22
                          ),),
                          Text("Dreamwalker",style: TextStyle(
                              fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Expanded(
                                 flex: 4,
                                 child: Container(
                                   padding: EdgeInsets.all(8),
                                   decoration: BoxDecoration(
                                     color: Colors.grey[300],
                                     borderRadius: BorderRadius.circular(12)
                                   ),
                                   child: Column(
                                     children: [
                                       Expanded(
                                         flex: 2,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text("Resume", style: TextStyle(
                                                 fontSize: 18,
                                                 fontWeight: FontWeight.bold
                                             ),),
                                             Icon(Icons.keyboard_arrow_right)
                                           ],
                                         ),
                                       ),
                                       Expanded(
                                         flex: 5,
                                         child: Container(
                                           width: double.infinity,
                                           child: ListView.builder(itemBuilder: (context,index){
                                             return Container(height: 48,
                                             margin: EdgeInsets.only(bottom: 8),
                                             decoration: BoxDecoration(
                                               color: Colors.white
                                             ),
                                             padding: EdgeInsets.all(4),
                                             child: Row(
                                               children: [
                                                 Container(
                                                   height: 42,
                                                   width: 42,
                                                   decoration: BoxDecoration(
                                                     color: Colors.blue[200],
                                                     borderRadius: BorderRadius.circular(8)
                                                   ),
                                                   child: Center(
                                                     child: Icon(Icons.description,
                                                     color: Colors.blue,),
                                                   ),
                                                 )
                                               ],
                                             ),
                                             );
                                           }),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                                SizedBox(height: 8,),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Center(
                                            child: Text("9", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24
                                            ),),
                                          ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Invoice", style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16
                                                ),),
                                                Text("Prepared", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey
                                                ),)
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.keyboard_arrow_right),
                                            onPressed: (){},
                                          )

                                        ],
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Placeholder(),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
              ),
              title: Text("Earning")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
              ),
              title: Text("Statistic")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
              ),
              title: Text("Inbox")),
        ],
      ),
    );
  }
}
