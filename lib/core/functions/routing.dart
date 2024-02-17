import 'package:flutter/material.dart';

pushAndReplacment(context, Widget newSceen) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => newSceen,
  ));
}

push(context, Widget newSceen) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => newSceen,
  ));
}
