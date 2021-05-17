import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Search_page/search_main.dart';
import 'biomat/BioMatCourseList.dart';
import 'package:page_transition/page_transition.dart';

class direction_main extends StatefulWidget {
  direction_main({Key key}) : super(key: key);

  @override
  _direction_mainState createState() => _direction_mainState();
}

class _direction_mainState extends State<direction_main> {
  double _screenWidth;
  double _screenH;
  // (page1(),page2(),page3(),page4()) //
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => search_main(),
                  ));
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 34,
            ),
          )
        ],
        title: Text("Direction For Material Eng",
            style: TextStyle(
                color: Colors.white,
                fontSize: _screenH / 37,
                fontWeight: FontWeight.w700)),
      ),
      body: Row(
        children: [
          SizedBox(
            width: _screenWidth / 15,
          ),
          Column(
            children: [
              SizedBox(
                height: _screenH / 25,
              ),
              InkWell(
                hoverColor: Colors.white.withOpacity(0.4),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: biomatCourseList(),
                          type: PageTransitionType.rightToLeftJoined,
                          childCurrent: direction_main()));
                },
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.7, height: _screenH / 2.8),
                  child: Text(
                    "Biomaterial",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: _screenH / 30,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(4, 4), color: Colors.blue[100])
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              InkWell(
                hoverColor: Colors.white.withOpacity(0.4),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: biomatCourseList(),
                          type: PageTransitionType.rightToLeftJoined,
                          childCurrent: direction_main()));
                },
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.7, height: _screenH / 2.8),
                  child: Text(
                    "Data Managment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: _screenH / 30,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(4, 4), color: Colors.blue[100])
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/data.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: _screenWidth / 12,
          ),
          Column(
            children: [
              SizedBox(
                height: _screenH / 25,
              ),
              InkWell(
                hoverColor: Colors.white.withOpacity(0.4),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: biomatCourseList(),
                          type: PageTransitionType.rightToLeftJoined,
                          childCurrent: direction_main()));
                },
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.7, height: _screenH / 2.8),
                  child: Text(
                    "Smart Material",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: _screenH / 30,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(4, 4), color: Colors.blue[100])
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/smart.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: _screenH / 25,
              ),
              InkWell(
                hoverColor: Colors.white.withOpacity(0.4),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: biomatCourseList(),
                          type: PageTransitionType.rightToLeftJoined,
                          childCurrent: direction_main()));
                },
                child: Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.7, height: _screenH / 2.8),
                  child: Text(
                    "Manufacutring",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: _screenH / 30,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(4, 4), color: Colors.blue[100])
                      ],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/emaf.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
