import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserMatchingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserMatchingHomePage(),
    );
  }
}

class UserMatchingHomePage extends StatefulWidget {
  @override
  _UserMatchingHomePageState createState() => _UserMatchingHomePageState();
}

class _UserMatchingHomePageState extends State<UserMatchingHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: CustomDrawer(
        child: Container(
          height: MediaQuery.of(context).size.height - 20,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Container(
                  height: 480,
                  padding: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(64), bottomLeft: Radius.circular(84))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 160,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.camera, color: Colors.blue[400]),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Edit Pictures",
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(Icons.edit, color: Colors.blue[400]),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Edit info",
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(Icons.settings, color: Colors.blue[400]),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Settings",
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(Icons.account_circle_rounded, color: Colors.blue[400]),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Connect contacts",
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(Icons.exit_to_app, color: Colors.blue[400]),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Log Out",
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 38,
                              width: 140,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue[400]), borderRadius: BorderRadius.circular(32)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.mail, color: Colors.blue[400]),
                                    Text(
                                      "Invite a friend",
                                      style: TextStyle(color: Colors.blue[400]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.indigo[300],
                      borderRadius: BorderRadius.only(topRight: Radius.circular(64), bottomLeft: Radius.circular(84))),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 16,
                        top: 16,
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            _globalKey.currentState.openEndDrawer();
                          },
                        ),
                      ),
                      Positioned(
                          top: 24,
                          left: 16,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 48,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dreamwalker",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Flutter Live Coding",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                        ),
                        child: PageView(
                          controller: _pageController,
                          children: [
                            Column(children: [
                              Text("Full subscription", style: TextStyle(
                                fontSize: 16,
                                color: Colors.green
                              ),),
                              Text("Review all the characteristics", style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green
                              ),),
                            ],)

                          ],
                        ),
                      ),SizedBox(height: 8,),
                      Container(
                        height: 12,
                        child: SmoothPageIndicator(
                          controller: _pageController, count: 3,
                          effect: WormEffect(dotHeight: 8, dotWidth: 8),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        height: 48,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Center(
                          child: Text("Begin now", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,

                          ),),
                        )
                      ),

                    ],
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 24, right: 24, top: MediaQuery.of(context).size.height / 3.6, bottom: 0, child: Placeholder()),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      color: Colors.blue[100], borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64))),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              child: Center(
                            child: IconButton(
                              icon: Icon(Icons.chat_bubble_outline),
                              iconSize: 38,
                              color: Colors.blue[200],
                              onPressed: () {},
                            ),
                          )),
                          Expanded(
                              child: Center(
                            child: IconButton(
                              icon: Icon(Icons.search),
                              iconSize: 38,
                              color: Colors.blue[200],
                              onPressed: () {},
                            ),
                          )),
                          Expanded(
                              child: Center(
                            child: IconButton(
                              icon: Icon(Icons.favorite_border),
                              iconSize: 38,
                              color: Colors.blue[200],
                              onPressed: () {},
                            ),
                          )),
                          Expanded(
                              child: Center(
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              iconSize: 38,
                              color: Colors.blue[200],
                              onPressed: () {
                                _globalKey.currentState.openDrawer();
                              },
                            ),
                          )),
                        ],
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.blue[200], borderRadius: BorderRadius.circular(32)),
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          Icon(Icons.tune),
                          Spacer(),
                          Text("Best match"),
                          IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {})
                        ],
                      )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  /// Creates a material design drawer.
  ///
  /// Typically used in the [Scaffold.drawer] property.
  ///
  /// The [elevation] must be non-negative.
  const CustomDrawer({Key key, this.elevation = 16.0, this.child, this.semanticLabel, this.width})
      : assert(elevation != null && elevation >= 0.0),
        super(key: key);

  /// The z-coordinate at which to place this drawer relative to its parent.
  ///
  /// This controls the size of the shadow below the drawer.
  ///
  /// Defaults to 16, the appropriate elevation for drawers. The value is
  /// always non-negative.
  final double elevation;

  final double width;

  /// The widget below this widget in the tree.
  ///
  /// Typically a [SliverList].
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  /// The semantic label of the dialog used by accessibility frameworks to
  /// announce screen transitions when the drawer is opened and closed.
  ///
  /// If this label is not provided, it will default to
  /// [MaterialLocalizations.drawerLabel].
  ///
  /// See also:
  ///
  ///  * [SemanticsConfiguration.namesRoute], for a description of how this
  ///    value is used.
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    String label = semanticLabel;
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        label = semanticLabel;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        label = semanticLabel ?? MaterialLocalizations.of(context)?.drawerLabel;
    }
    return Semantics(
        scopesRoute: true,
        namesRoute: true,
        explicitChildNodes: true,
        label: label,
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(width: MediaQuery.of(context).size.width - 24),
            child: Material(
              color: Colors.green[200],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(64))),
              elevation: elevation,
              child: child,
            ),
          ),
        ));
  }
}
