import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  late final String _url;
  late final double _width;
  late final double _height;

  CircleImage({required double width, required double height, required String url}) {
    _width = width;
    _height = height;
    _url = url;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: _width,
      height: _height,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(
                 _url)
      )
    ));
  }
}