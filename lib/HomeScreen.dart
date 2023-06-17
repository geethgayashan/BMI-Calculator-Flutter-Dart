import 'package:calc/BMI_crd.dart';
import 'package:calc/Bmi_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 15;
  int weight = 75;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('BMI Calculator'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 24.0.sp),
          child: Column(
            children: [
              Text(
                'Check your body mass index BMI to know if you are in good body shape',
                style:
                    TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 23.0.h,
                width: 10.0.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BMICRD(
                    width: 156,
                    height: 215,
                    title: 'AGE',
                    value: age.toString(),
                    lable: 'years',
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Bbutton(icon: Icons.remove),
                        Bbutton(icon: Icons.add),
                      ],
                    ),
                  ),
                  BMICRD(
                    width: 156,
                    height: 215,
                    title: 'WEIGHT',
                    value: weight.toString(),
                    lable: 'kg',
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Bbutton(icon: Icons.remove),
                        Bbutton(icon: Icons.add),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              BMICRD(
                width: 156,
                height: double.infinity,
                title: 'HEIGHT',
                value: height.toString(),
                lable: 'CM',
                child: Slider(
                    value: height.toDouble(),
                    activeColor: Colors.white,
                    inactiveColor: Colors.white.withOpacity(0.45),
                    min: 100.0,
                    max: 220.0,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
