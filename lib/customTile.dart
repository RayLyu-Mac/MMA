import 'package:flutter/material.dart';

class customListTile extends StatelessWidget {
  const customListTile(
      {@required this.name,
      @required this.pageTo,
      @required this.fonts,
      @required this.controller,
      key})
      : super(key: key);
  final String name;
  final int pageTo;
  final double fonts;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[100]))),
          child: InkWell(
            splashColor: Colors.blue[100],
            onTap: () => {
              controller.animateToPage(pageTo,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut)
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fonts),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          )),
    );
  }
}
