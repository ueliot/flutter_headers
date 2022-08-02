import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/headers.dart';

class HeaderPages extends StatelessWidget {
  const HeaderPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: HeaderCuadrado(),
      //body: HeaderBordesRedondeados(),
      //body: HeaderDiagonal(),
      //body: HedaerTriangular(),
      //body: HeaderPico(),
      //body: HeaderCurvo(),
      //body: HeaderWave(),
      body: HeaderWaveGradient(),
    );
  }
}
