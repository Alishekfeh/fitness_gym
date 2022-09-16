import 'package:fitnees_app/peages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './res/color.dart';


//  Container(
//               transform: Matrix4.translationValues(0, -60, 0),
//لتعديل البادينك للأعلى



//البار السفلي
// floatingActionButton: FloatingActionButton(
//         backgroundColor: NyColor.secondary,
//         onPressed: (){},
//         child:const Icon(Icons.add,color: Colors.white,),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         color: NyColor.primary,
//         shape:const CircularNotchedRectangle(),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(onPressed: (){}, icon:const Icon(Icons.home_max_outlined),color: Colors.white,),
//             IconButton(onPressed: (){}, icon:const Icon(Icons.addchart),color: Colors.white,),
//             const  SizedBox(width: 50,),
//             IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border),color: Colors.white,),
//             IconButton(onPressed: (){}, icon:const Icon(Icons.person),color: Colors.white,),
//           ],
//         ),
//       ),


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fitness ',
      theme: ThemeData(
        primaryColor: NyColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:const HomePage(),
    );
  }
}
