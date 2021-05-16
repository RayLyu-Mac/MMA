import 'package:flutter/material.dart';
import 'green_room.dart';

class HeroType {
  String title;
  String subTitle;
  String fText;
  String image;
  List _heroType;
  Widget forw;
  Color materialColor;

  HeroType(
      {this.title,
      this.subTitle,
      this.fText,
      this.image,
      this.materialColor,
      this.forw});
  List<HeroType> createSampleList() {
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
          title: 'Green Room',
          subTitle: 'Room For Study and Group Work',
          fText:
              'Location: JHE 2nd Floor \n \nAvaiable Seat: 10 \n \nNeed Acess Card',
          image: 'assest/equipment/lm.jpg',
          forw: green_Room(),
          materialColor: Colors.green[700]))
      ..add(HeroType(
          title: 'Orange Room',
          subTitle: 'Room For Study and Group Work',
          fText:
              'Location: JHE 3rd Floor \n \nAvaiable Seat: 10 \n \nNeed Acess Card',
          image: 'assest/equipment/lm.jpg',
          forw: green_Room(),
          materialColor: Colors.amber[700]));
  }
}
