

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/src/chart/base/axis_chart/axis_chart_data.dart';
import 'package:tradingapp/home_page.dart';
import 'package:tradingapp/main.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 10,left: 10),
               child: Row(
                 children: [
                   GestureDetector(
                     onTap: (){
                       Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                           builder: (context) => MyApp(),
                         ),
                       );
                     },
                     child: Container(
                       height: 30,
                       width: 30,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.grey.withOpacity(0.3)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 5),
                         child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 15,),
                       ),
                     ),
                   ),
                   SizedBox(width: 20,),
                   Text("Trade",
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.white
                   ),
                   )
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.3)
                      ),
                      child: Center(
                        child: Text("Swap",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Center(
                        child: Text("Margin",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Center(
                        child: Text("Options",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Text("29 493.43",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                    ),
                    Spacer(),
                    Text("+4.5%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.greenAccent
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("26,643.4",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("26,643.4",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Text("-\$29 493.43",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("+4.5%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.greenAccent
                      ),
                    ),
                    Spacer(),
                    Text("24h change",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("24h high",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("24h low",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.3)
                      ),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Row(
                  children: [
                    DropdownExample(),
                    Spacer(),
                    Text("Time",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.3)
                    ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      child: Center(
                        child: Text("15m",style:TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text("1h",style:TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text("4h",style:TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    DropdownExample1(),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width * 0.87,
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 4,
                              minY: 0,
                              maxY: 7,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 0),
                                    FlSpot(1, 5),
                                    FlSpot(2, 8),
                                  ],
                                  isCurved: true,
                                  color: Colors.greenAccent,
                                  barWidth: 4,
                                  isStrokeCapRound: true,
                                  dotData: FlDotData(show: true),
                                  belowBarData: BarAreaData(show: false),
                                ),
                                LineChartBarData(
                                  spots: [
                                    FlSpot(2, 8),
                                    FlSpot(3, 4),
                                    FlSpot(4, 2),
                                  ],
                                  isCurved: true,
                                  color: Colors.redAccent,
                                  barWidth: 4,
                                  isStrokeCapRound: true,
                                  dotData: FlDotData(show: true),
                                  belowBarData: BarAreaData(show: false),
                                ),
                              ],
                            ),
                          )

                  ),
                  Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('234.3',style: TextStyle(color: Colors.white),),
                              Text('232.3',style: TextStyle(color: Colors.white),),
                              Text('232.3',style: TextStyle(color: Colors.white),),
                              Text('232.3',style: TextStyle(color: Colors.white),),
                              Text('232.3',style: TextStyle(color: Colors.white),),
                              Text('232.3',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
              Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.87,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('14.45',style: TextStyle(color: Colors.white),),
                            Text('14.48',style: TextStyle(color: Colors.white),),
                            Text('14.50',style: TextStyle(color: Colors.white),),
                            Text('14.52',style: TextStyle(color: Colors.white),),
                            Text('14.56',style: TextStyle(color: Colors.white),),
                            Text('15.00',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("+4.5%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.greenAccent
                          ),
                        ),
                        Text("Total margin",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("24,543.4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                        Text("Margin used",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                                height:20,
                                child: Image.asset('lib/assets/Screenshot_2024-03-31_100512-removebg-preview.png')),
                            SizedBox(width: 5,),
                            Text("0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Text("Risk level",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text("-x",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1,color: Colors.greenAccent),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("34,546",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.greenAccent
                          ),
                          ),
                          Text("Ask",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1,color: Colors.redAccent),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("34,546",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.redAccent
                            ),
                          ),
                          Text("Bid",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3)
                      ),
                      child: Center(
                        child: Text("Limit",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Center(
                        child: Text("Market",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Center(
                        child: Text("Stoplimit",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text("GTC",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios,size: 15,color: Colors.white,),
                        SizedBox(width: 10,),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Text("Order price",
                      style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.6)
                      ),
                      ),
                      title: Text("0.00",
                        style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.3)
                        ),
                      ),
                      trailing: Text("USD",
                        style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.3)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Text("Amount",
                        style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.6)
                        ),
                      ),
                      title: Text("0.00",
                        style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.3)
                        ),
                      ),
                      trailing: Text("BCH",
                        style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.3)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedValue = 'Min price';
  List<String> options = ['Min price', 'Max price', 'Wholesale'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      dropdownColor: Colors.black,
      underline: Container(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(color: Colors.white),),
        );
      }).toList(),
    );
  }
}

class DropdownExample1 extends StatefulWidget {
  @override
  _DropdownExampleState1 createState() => _DropdownExampleState1();
}

class _DropdownExampleState1 extends State<DropdownExample1> {
  String selectedValue = '1D';
  List<String> options = ['1D', '1W', '1M'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      dropdownColor: Colors.black,
      underline: Container(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: TextStyle(color: Colors.white),),
        );
      }).toList(),
    );
  }
}