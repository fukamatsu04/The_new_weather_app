import 'package:flutter/material.dart';

class AppColors {}

const kSunnyDay_background = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
      Color.fromARGB(151, 247, 148, 0),
      Color.fromARGB(234, 247, 119, 0)
    ]));

const kRainyDay_background = null;

const kNight_background = null;
