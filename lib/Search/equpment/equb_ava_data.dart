import 'package:flutter/material.dart';
import 'package:mma_mse/equipment/ICP_OES/ICPMain.dart';
import 'package:mma_mse/equipment/UTM/universal_tensile_machine_MainPage.dart';
import "package:mma_mse/equipment/BulkAbrasive/BulkAbrasiveMain.dart";
import 'package:mma_mse/equipment/Automatic Micro Hardness Tester/AMHMain.dart';
import 'package:mma_mse/equipment/CharpyImpact/Charpy.dart';
import 'package:mma_mse/equipment/Keyence Microscope/keyenceMain.dart';

class HeroType {
  String title;
  String subTitle;
  String fText;
  String image;
  List _heroType;
  Widget pageTo;
  Color materialColor;

  HeroType(
      {this.title,
      this.subTitle,
      this.fText,
      this.image,
      this.materialColor,
      this.pageTo});
  List<HeroType> createSampleList() {
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
          title: 'Universal Tensile Machine',
          subTitle: 'Test for material mechanical property',
          fText:
              'Avaiable on:  \nJHE 1st floor Mechanical Lab \nJHE 2nd floor 216  \n  \nTest can be operate: \nTensile Test \nThreee Point Test',
          image: 'assest/equipment/mts.jpg',
          materialColor: Colors.amber[800],
          pageTo: tensile_test()))
      ..add(HeroType(
          title: 'Rockwell Hardness Machine',
          subTitle: 'Test for material hardness',
          fText:
              'Device Needed: Rockwell machine.\n \nMaterial property can be tested: hardness ',
          image: 'assest/equipment/rwt.jpg',
          materialColor: Colors.blueGrey[600]))
      ..add(HeroType(
          title: 'ICP-OES',
          subTitle: 'Inductive Coupled Plasma Optical Emission Spectrometer',
          pageTo: ICP_OES_Main(),
          fText:
              'Avaiable on: \nJHE Room 239 \n \nFeatures: \n•Varian Vista Pro. \n•CCD camera as a dectector with a very wide range of available wavelengths, agrating wavelength selector and powerful sofrware to capture and analyze the data. \n•The instrument is configured for liquid samples only',
          image: 'assest/equipment/icp.jpg',
          materialColor: Colors.redAccent[700]))
      ..add(HeroType(
          title: 'Light Microscope',
          subTitle: 'Find the microstructure property',
          fText:
              'Device needed: Light Microscope and computer. \n  \nMaterial Properties: Grain size and Grain distance',
          image: 'assest/equipment/lm.jpg',
          materialColor: Colors.green[700]))
      ..add(HeroType(
          title: 'Automatic Bulk Abrasive Cutter',
          subTitle: 'Cut the material',
          fText: 'Avaiable on JHE 242',
          image: 'assest/equipment/abc.jpg',
          pageTo: BulkAbrasive_Main(),
          materialColor: Colors.purple))
      ..add(HeroType(
          title: 'Charpy Impact Tester',
          subTitle: 'Used to measure the relative toughness of a material',
          fText: 'Avaiable on JHE 242',
          image: 'assest/equipment/cit.jpg',
          pageTo: charpy_test(),
          materialColor: Colors.grey))
      ..add(HeroType(
          title: 'Automatic Micro-Hardness Tester',
          subTitle: 'Machine Used for Hardness Test',
          fText: 'Avaiable on JHE 242',
          image: 'assest/equipment/mht.jpg',
          pageTo: AutomaticMicroHardnessMain(),
          materialColor: Colors.blue))
      ..add(HeroType(
          title: 'Keyence Microscope',
          subTitle: 'Microscope for microstructure analysis',
          fText: 'Avaiable on JHE 241',
          image: 'assest/equipment/kms.jpg',
          pageTo: KeyenceMMain(),
          materialColor: Colors.blueAccent));
  }
}
