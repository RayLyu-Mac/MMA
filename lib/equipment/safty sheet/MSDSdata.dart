import 'package:flutter/material.dart';

class msdsData {
  String location;
  String name;
  String type;
  Color level;
  String short;

  msdsData({this.location, this.name, this.type, this.level, this.short});

  List<msdsData> msDataList() {
    List materialData = List<msdsData>();
    return materialData
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Alumina",
          level: Colors.green,
          type: "Solid",
          short: "Al2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Ammonium Sulphate",
          level: Colors.green,
          type: "Solid",
          short: "AlH4NO8S2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Hydroxide",
          level: Colors.green,
          type: "Solid",
          short: "Al(OH)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Alumina",
          level: Colors.green,
          type: "Solid",
          short: "Al2O3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Nitrate",
          level: Colors.yellow,
          type: "Solid",
          short: "Al(NO3)3"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Bifluoride",
          level: Colors.white,
          type: "Solid",
          short: "NH4HF2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Aluminum Potassium Sulfate",
          level: Colors.green,
          type: "Solid",
          short: "KAl(SO4)2"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Chloride",
          level: Colors.green,
          type: "Solid",
          short: "NH4Cl"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Copper Chloride",
          level: Colors.green,
          type: "Solid",
          short: "CuCl2•2NH4Cl.2H2O"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Ferrous",
          level: Colors.green,
          type: "Solid",
          short: "(NH4)2Fe(SO4)2(H2O)6"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Hydroxide",
          level: Colors.grey,
          type: "Solid",
          short: "NH4OH"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Molybdate",
          level: Colors.green,
          type: "Solid",
          short: "(NH4)6Mo7O24"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Ammonium Sulphate",
          level: Colors.blue,
          type: "Solid",
          short: "(NH4)2SO4"))
      ..add(msdsData(
          location: "JHE-240 /246/A",
          name: "Iodine",
          level: Colors.red,
          type: "Solid",
          short: "I"));
  }
}
