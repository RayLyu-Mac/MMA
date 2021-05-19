import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'charpyImpact.dart';
import 'package:flutter/services.dart';

class RockWellinstruction extends StatefulWidget {
  final video videoType;
  const RockWellinstruction({Key key, this.videoType}) : super(key: key);

  @override
  _RockWellinstructionState createState() => _RockWellinstructionState();
}

class _RockWellinstructionState extends State<RockWellinstruction> {
  List _instructionList = List<video>();
  double _screenWidth;
  double _screenH;

  @override
  void initState() {
    super.initState();
    _instructionList = video().videoList();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

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
          title: Text(
            "Charpy Impact Test instruction",
            style:
                TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemExtent: 325,
            itemCount: _instructionList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Card(
                  color: _instructionList[index].materialcolor,
                  margin: EdgeInsets.fromLTRB(20, 16, 20, 8),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 265,
                          left: 5,
                          child: Text(
                            _instructionList[index].title,
                            style: TextStyle(
                                fontSize: _screenH / 47,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 280,
                          left: 5,
                          child: Text(
                            _instructionList[index].subtitle,
                            style: TextStyle(fontSize: _screenH / 58),
                          )),
                      Positioned(
                          top: 0,
                          child: Container(
                            height: 260,
                            child: YoutubePlayer(
                              controller:
                                  _instructionList[index].videoController,
                              liveUIColor: Colors.amber,
                            ),
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
