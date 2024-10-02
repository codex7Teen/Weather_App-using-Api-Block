import 'package:flutter/material.dart';

// This is widget which gives the weather icon according to the weather code
Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 200:
      return Image.asset('assets/1.png', width: 320);
    case >= 300 && < 400:
      return Image.asset('assets/2.png', width: 320);
    case >= 500 && < 600:
      return Image.asset('assets/3.png', width: 320);
    case >= 600 && < 700:
      return Image.asset('assets/4.png', width: 320);
    case >= 700 && < 800:
      return Image.asset('assets/5.png', width: 320);
    case == 800:
      return Image.asset('assets/6.png', width: 320);
    case > 800 && <= 804:
      return Image.asset('assets/7.png', width: 320);
    default:
      return Image.asset('assets/7.png', width: 320);
  }
}
