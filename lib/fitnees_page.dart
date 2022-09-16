import 'package:fitnees_app/res/line_chart.dart';
import 'package:flutter/material.dart';
import './res/color.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class FitnessPage extends StatelessWidget {
  const FitnessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: Image.asset(
                  "assets/avatar.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 2),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Today"),
                  Text(
                    "september 29 2022",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const  [
                   NewExpanded(
                    iconData: Icons.favorite_border_outlined,
                    color: Colors.deepOrangeAccent,
                    title1: "heart",
                    title2: "80",
                    title3: "per min",
                  ),
                   NewExpanded(
                    iconData: Icons.local_fire_department_outlined,
                    color: Colors.lightGreen,
                    title1: "calories",
                    title2: "950",
                    title3: "Kcal",
                  ),
                   NewExpanded(
                    iconData: Icons.bedtime,
                    color: Colors.deepPurple,
                    title1: "sleep",
                    title2: "8:30",
                    title3: "per min",
                  ),
                   NewExpanded(
                    iconData: Icons.favorite_border_outlined,
                    color: Colors.deepOrangeAccent,
                    title1: "heart",
                    title2: "80",
                    title3: "per min",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 200,
              width: 200,
              child: SfRadialGauge(
                axes:<RadialAxis> [
                  RadialAxis(
                    axisLineStyle:const AxisLineStyle(
                      thickness: 0.2,
                      thicknessUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.bothCurve
                    ),
                    showTicks: false,
                    showLabels: false,
                    onAxisTapped: (value){},
                    pointers: <GaugePointer>[
                      RangePointer(
                        color: NyColor.secondary,
                        value: 60,
                        onValueChanged: (value){},
                        cornerStyle: CornerStyle.bothCurve,
                        onValueChangeEnd: (value){},
                        onValueChangeStart: (value){},
                        enableDragging: true,
                        width: 0.2,
                        sizeUnit: GaugeSizeUnit.factor,
                      )
                    ],
                    annotations:  <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const  [
                                Text("2.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                Text("2.0",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                        positionFactor: 0.13,
                        angle: 0.5,

                      )

                    ],
                  )
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -60, 0),
              height: 60,
              child: Image.asset("assets/marathon.png"),
            ),
             Container(
               transform: Matrix4.translationValues(0, -60, 0),
              child: MyLineChart(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: NyColor.secondary,
        onPressed: (){},
        child:const Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: NyColor.primary,
        shape:const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.home_max_outlined),color: Colors.white,),
            IconButton(onPressed: (){}, icon:const Icon(Icons.addchart),color: Colors.white,),
            const  SizedBox(width: 50,),
            IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border),color: Colors.white,),
            IconButton(onPressed: (){}, icon:const Icon(Icons.person),color: Colors.white,),
          ],
        ),
      ),
    );
  }
}

class NewExpanded extends StatefulWidget {
  const NewExpanded({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.color,
    required this.iconData,
  }) : super(key: key);
  final String title1, title2, title3;
  final Color color;
  final IconData iconData;

  @override
  State<NewExpanded> createState() => _NewExpandedState();
}

class _NewExpandedState extends State<NewExpanded> {
  bool isSelected =false ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {


          isSelected=!isSelected;


        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 20, horizontal: 10),
           decoration:isSelected? BoxDecoration(
            border: Border.all(color: NyColor.secondary),
            borderRadius: BorderRadius.circular(30)):
              const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(shape: BoxShape.circle, color: widget.color),
                child: Icon(
                  widget.iconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.title1,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                widget.title2,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                widget.title3,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
