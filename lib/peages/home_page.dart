import 'package:fitnees_app/fitnees_page.dart';
import 'package:flutter/material.dart';
import '../res/color.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    const  SizedBox sizedBox10= SizedBox(height: 10,);
    return Scaffold(
      body: Container(
        padding: const  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/intro.png"),
            sizedBox10,
            const Text("30 Day fitness Challenges ",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            sizedBox10,
            SizedBox(
              width: size.width*0.8,
              child: const Text("Level One Fitness offers personal training, group fitness, sports specific training, and more. ",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                color: Colors.black26,
                height: 1.5
              ),),
            ),
            sizedBox10,
            Row(
              children: [
                const Spacer(),
                MaterialButton(onPressed: (){
                //  Navigator.push(context, MaterialPageRoute(builder:(context)=>const FitnessPage()));
                  Get.to(const FitnessPage());
                },
                elevation: 2,
                  color: NyColor.primary,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            sizedBox10,
            sizedBox10,


          ],
        ),
      ),
    );
  }
}
