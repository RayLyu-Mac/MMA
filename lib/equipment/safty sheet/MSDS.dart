import 'package:flutter/material.dart';
import 'MSDSdata.dart';

class SearchListExample extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}

class _SearchListExampleState extends State<SearchListExample> {
  Widget appBarTitle = new Text(
    "Search Example",
    style: new TextStyle(color: Colors.white),
  );
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  List _list = List();
  bool _isSearching;
  bool searchChem = false;
  bool searchLoc = false;
  bool searchName = false;
  String _searchText = "";
  List total = new List();
  List name = new List();

  _SearchListExampleState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    total = msdsData().msDataList();
    for (var i = 0; i < total.length; i++) {
      _list.add(total[i].name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: globalKey,
        appBar: buildAppBar(context),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Flexible(
                  child: name.length != 0 || _controller.text.isNotEmpty
                      ? new ListView.builder(
                          shrinkWrap: true,
                          itemCount: name.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = name[index];
                            return new ListTile(
                              title: new Text(listData.toString()),
                            );
                          },
                        )
                      : new ListView.builder(
                          shrinkWrap: true,
                          itemCount: _list.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = _list[index];
                            return new ListTile(
                              title: new Text(listData.toString()),
                            );
                          },
                        ))
            ],
          ),
        ));
  }

  Widget buildAppBar(BuildContext context) {
    String dropdownValue = "Search Name";
    return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
      DropdownButton(
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        value: dropdownValue,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (value) {
          setState(() {
            dropdownValue = value;
            switch (value) {
              case "Search Name":
                searchName = true;
                _list.clear();
                for (var i = 0; i < total.length; i++) {
                  _list.add(total[i].name);
                }
                break;
              case "Search Location":
                searchLoc = true;
                _list.clear();
                for (var i = 0; i < total.length; i++) {
                  _list.add(total[i].location);
                }
                break;
              case "Search Chemical Formula":
                searchChem = true;
                _list.clear();
                for (var i = 0; i < total.length; i++) {
                  _list.add(total[i].short);
                }
                break;
            }
          });
        },
        items: <String>[
          "Search Name",
          "Search Location",
          "Search Chemical Formula"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "Search Sample",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    name.clear();
    if (_isSearching != null) {
      for (int j = 0; j < _list.length; j++) {
        String data = _list[j];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          name.add(data);
        }
      }
    }
  }
}
