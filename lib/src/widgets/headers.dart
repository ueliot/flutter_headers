// ignore_for_file: use_key_in_widget_constructors, unnecessary_new

//import 'dart:ffi';

import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
    );
  }
}

/*
De este modo no se puede hacer la diagonal y pintarla
tenemos que usar el custopainter

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

*/

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.stroke; // .fill
    //lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();
    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}

//Header Pico
class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPico(),
      ),
    );
  }
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.stroke; // .fill
    //lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.5, size.height * 0.28);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}

//Header Curvo
class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvo(),
      ),
    );
  }
}

class _HeaderCurvo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.stroke; // .fill
    //lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.30, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}

//Header Wave
class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWave(),
      ),
    );
  }
}

class _HeaderWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.stroke; // .fill
    //lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.1, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}

//Header Wave Gradiente
class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWaveGradient(),
      ),
    );
  }
}

class _HeaderWaveGradient extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(165.0, 55.0), radius: 160);

    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012ff),
          Color(0xff6D05FA)
        ],
        //This stops correspond the color intensity
        stops: [
          0.2,
          0.5,
          1
        ]);

    final lapiz = new Paint()..shader = gradiente.createShader(rect);
    //lapiz.color = Colors.red;
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill; // .fill
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.1, size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return true;
  }
}
