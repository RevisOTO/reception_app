import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const baseURL = "http://192.168.0.2:3000/";

double kSpacing = 25.00;

BorderRadius kBorderRadius = BorderRadius.circular(5.5);
EdgeInsets kHPadding = const EdgeInsets.symmetric(horizontal: 24.00);
EdgeInsets nonePadding = const EdgeInsets.symmetric(horizontal: 0.00);
EdgeInsets kVPadding = const EdgeInsets.symmetric(horizontal: 20.00);
EdgeInsets allPadding =
    const EdgeInsets.only(left: 20.00, right: 20.00, bottom: 32);
Color primaryColorBtn = const Color.fromARGB(255, 33, 124, 243);
TextStyle optionsText =
    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
TextStyle categoriesText = const TextStyle(
    fontWeight: FontWeight.w900, color: Colors.grey, fontSize: 16);
