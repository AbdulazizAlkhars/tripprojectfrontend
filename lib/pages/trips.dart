import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import '../tabs/fav_trips.dart';
import '../tabs/mytrips.dart';
import '../tabs/whishlist.dart';
import '../widgets/appbar.dart';
import '../widgets/postsitem.dart';
// ignore_for_file: prefer_const_constructors

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Flexible(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: TabBar(
                      controller: _tabController,
                      labelPadding: EdgeInsets.symmetric(horizontal: 25),
                      indicatorColor: Color(0xfff3f4f9),
                      indicator: PointTabIndicator(
                        position: PointTabIndicatorPosition.bottom,
                        insets: EdgeInsets.only(bottom: 3),
                        color: Colors.red,
                      ),
                      indicatorWeight: 1.0,
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            'My Trips',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Ubuntu-Regular'),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Favorite Trips',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Ubuntu-Regular'),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Whishlist',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Ubuntu-Regular'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 10.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Container(
                  //         height: 30,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey[300],
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: Center(
                  //           child: Text(
                  //             'ON-GOING',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               fontFamily: 'Ubuntu-Regular',
                  //               color: Colors.black,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 30,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           color: Colors.grey[300],
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: Center(
                  //           child: Text(
                  //             'UP-COMING',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               fontFamily: 'Ubuntu-Regular',
                  //               color: Colors.black,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 30,
                  //         width: 100,
                  //         decoration: BoxDecoration(
                  //           color: Colors.red,
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         child: Center(
                  //           child: Text(
                  //             'COMPLETED',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               fontFamily: 'Ubuntu-Regular',
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          ListView(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            children: [
                              SizedBox(height: 10.0),
                              PostItem(),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            children: [
                              SizedBox(height: 10.0),
                              FavoriteTrips(),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: AlwaysScrollableScrollPhysics(),
                            children: [
                              SizedBox(height: 10.0),
                              Whishlist(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Trips',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Ubuntu-Regular',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
