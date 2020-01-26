import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eho_app/compass.dart';
import 'package:provider/provider.dart';

class CompassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Compass>(
      create: (_) => Compass(),
      child: Consumer<Compass>(
        builder: (context, compass, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('恵方巻きコンパス'),
            ),
            body: Center(
              child: Transform.rotate(
                angle: compass.angle,
                child: Image.asset(
                  'images/arrow.png',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
