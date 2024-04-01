

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tradingapp/trade.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  Color _color = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 3,color: Colors.greenAccent),
                          color: Colors.green.shade700,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent.withOpacity(0.7),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(_color, BlendMode.modulate),
                            child: Image.asset('lib/assets/Screenshot_2024-03-29_203700-removebg-preview.png'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.withOpacity(0.5),width: 1),
                        ),
                        child: Center(child: Icon(Icons.keyboard_arrow_down,color: Colors.grey.withOpacity(0.5),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Center(child: Image.asset('lib/assets/f0fd35a4862eb163692443d112d29d5f-removebg-preview.png',color: Colors.grey.withOpacity(0.5))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.greenAccent,
                              Colors.greenAccent.withOpacity(0.7)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Connect Wallet",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),
                        )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.format_align_right,color: Colors.grey.withOpacity(0.5),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.greenAccent.withOpacity(0.8),
                          Colors.green.withOpacity(0.1),
                          ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.05, 1.0],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 30,
                          top: 30,
                          child: Text("Smart AI Trading",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 0.5
                          ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Ai income",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.7)
                            ),
                            ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.account_balance_wallet_outlined,size: 20,color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text("\$43,435.7",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                              SizedBox(height: 15,),
                              Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent.shade100,
                                      Colors.greenAccent],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(child: Text("Start trading",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 300,
                          top: 10,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.greenAccent,
                            ),
                            child: Center(
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green,
                                  border: Border.all(width: 3, color: Colors.greenAccent.withOpacity(0.3)),
                                ),
                                child: Icon(
                                  Icons.keyboard_double_arrow_up,
                                  color: Colors.greenAccent,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 220,
                          top: 80,
                          child: Transform.rotate(
                            angle:0.1,
                            child: Container(
                              height: 230,
                              width: 250,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.white.withOpacity(0.9),
                                      Colors.green.withOpacity(0.7),],
                                    begin: Alignment.topLeft,
                                    end: Alignment.center,
                                    stops: [0.05,1.0]
                                  ),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 1,color: Colors.greenAccent)
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green.withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 2,color: Colors.greenAccent)
                                      ),
                                      child: Center(
                                        child: Text("CRYPTO",style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.white
                                        ),),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 45),
                                    child: Text("EXCHANGE",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white.withOpacity(0.5),
                                      letterSpacing: 1
                                    ),
                                    ),
                                  ),
                                  CustomPaint(
                                    size: Size(200, 200),
                                    painter: CurvedLinePainter(
                                      startPoint: Offset(0, 100),
                                      endPoint: Offset(200, 100),
                                      controlPoint1: Offset(100, 0),
                                      controlPoint2: Offset(100, 200),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 70,
                                    child: ClipOval(
                                      child: Container(
                                        height: 120,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [Colors.greenAccent.withOpacity(0.9),
                                              Colors.greenAccent.withOpacity(0.1),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.3, 1.0],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 160,
                          child: Transform.rotate(
                              angle: 1,
                              child: Container(
                                height: 110,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.green.withOpacity(0.3),
                                    BlendMode.srcATop,
                                  ),
                                  child: Image.asset(
                                    'lib/assets/compass1.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )
                          ),
                        ),
                        Positioned(
                          top: 240,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Popular Currencies",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                      ),
                                      ),
                                      Text("View all",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.greenAccent
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 230,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: (){
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => TradePage(),
                                            ),
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 220,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.grey.withOpacity(0.3),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 20, top: 5),
                                                      child: Container(
                                                        height: 30,
                                                        width: 30,
                                                        child: Image.asset('lib/assets/Bitcoin.svg.png'),
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 15, top: 10),
                                                          child: Text(
                                                            "Bitcoin",
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "BTC",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white.withOpacity(0.3),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 150,
                                                  height: 100,
                                                  child: CustomPaint(
                                                    painter: CurvePainter(),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 10),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 30,
                                                        width: 30,
                                                        child: Image.asset(
                                                          'lib/assets/Screenshot_2024-03-30_163825-removebg-preview.png',
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Text(
                                                        "2,000",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white,
                                                          fontFamily: 'Roboto',
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 20),
                                                  child: Text(
                                                    "+87.19 %",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.greenAccent,
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 150,
                                                child: Container(
                                                  height: 20,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(20),
                                                    ),
                                                    color: Colors.yellowAccent
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text("NEW",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 10,
                                                left: 10,
                                                child: Text("Buy crypto",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color: Colors.white
                                                ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 50,
                                                left: 10,
                                                child: Text("One click to buy",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white.withOpacity(0.7)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 160,
                                                top: 60,
                                                child: Transform.rotate(
                                                    angle: 1,
                                                    child: Icon(Icons.credit_card,
                                                      color: Colors.greenAccent,)),
                                              ),
                                              Positioned(
                                                left: 156,
                                                top: 70,
                                                child: Container(
                                                  height: 25,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Colors.black,
                                                    border: Border.all(width: 1,color: Colors.white)
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text("+",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.greenAccent
                                                    ),
                                                    ),
                                                  ),
                                                )
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.grey.withOpacity(0.3),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 150,
                                                child: Container(
                                                  height: 20,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(20),
                                                      ),
                                                      color: Colors.orange
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text("HOT",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w500,
                                                        color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 10,
                                                left: 10,
                                                child: Text("Live chat",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 18,
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 50,
                                                left: 10,
                                                child: Text("Have a problem?",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 15,
                                                      color: Colors.white.withOpacity(0.7)
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 160,
                                                top: 60,
                                                child: Icon(Icons.comment,
                                                  color: Colors.grey,),
                                              ),
                                              Positioned(
                                                left: 150,
                                                top: 70,
                                                child: Icon(Icons.message,
                                                  color: Colors.greenAccent,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

class CurvedLinePainter extends CustomPainter {
  final Offset startPoint;
  final Offset endPoint;
  final Offset controlPoint1;
  final Offset controlPoint2;

  CurvedLinePainter({
    required this.startPoint,
    required this.endPoint,
    required this.controlPoint1,
    required this.controlPoint2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.greenAccent
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(
        controlPoint1.dx, controlPoint1.dy, controlPoint2.dx, controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CurvedLinePainter oldDelegate) {
    return false;
  }
}


class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.greenAccent
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 10, size.height * 3 / 4, size.width / 5, size.height / 2);
    path.quadraticBezierTo(size.width * 2 / 10, size.height / 4,
        size.width * 3 / 10, size.height * 3 / 4);
    path.quadraticBezierTo(size.width * 4 / 10, size.height / 2,
        size.width * 5 / 10, size.height / 4);
    path.quadraticBezierTo(size.width * 6 / 10, size.height * 3 / 4,
        size.width * 7 / 10, size.height / 2);
    path.quadraticBezierTo(size.width * 8 / 10, size.height / 4,
        size.width * 9 / 10, size.height * 3 / 4);
    path.quadraticBezierTo(size.width, size.height / 2, size.width, 0);

    final shadowPath = Path();
    shadowPath.moveTo(0, size.height);
    shadowPath.quadraticBezierTo(
        size.width / 10, size.height * 3 / 4 + 10, size.width / 5, size.height / 2 + 10);
    shadowPath.quadraticBezierTo(size.width * 2 / 10, size.height / 4 + 10,
        size.width * 3 / 10, size.height * 3 / 4 + 10);
    shadowPath.quadraticBezierTo(size.width * 4 / 10, size.height / 2 + 10,
        size.width * 5 / 10, size.height / 4 + 10);
    shadowPath.quadraticBezierTo(size.width * 6 / 10, size.height * 3 / 4 + 10,
        size.width * 7 / 10, size.height / 2 + 10);
    shadowPath.quadraticBezierTo(size.width * 8 / 10, size.height / 4 + 10,
        size.width * 9 / 10, size.height * 3 / 4 + 10);
    shadowPath.quadraticBezierTo(size.width, size.height / 2 + 10, size.width, 0);

    final shadowPaint = Paint()
      ..color = Colors.greenAccent.withOpacity(0.1)
      ..strokeWidth = 8.0
      ..style = PaintingStyle.stroke;

    canvas.drawPath(shadowPath, shadowPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}