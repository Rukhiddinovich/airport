import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n8_default_project/ui/home/widgets/airport.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.C_6760D4,
                Color(0xFFFF68C2),
                Color(0xFFFFDE73),
              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppImages.back),
                      const Text("SEARCH RESULT",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),),
                      SvgPicture.asset(AppImages.menu),
                    ],
                  ),
                ),
                SizedBox(height: height*(5/812),),
                Container(
                  height: height*(61/812),
                  width: width*(335/375),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.white
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        child: Column(
                          children: [
                            Text("22 AUG",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: AppColors.C_6760D4,
                            ),),
                            Text("\$1070",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.C_6760D4
                            ),)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        child: Column(
                          children: [
                            Text("23 AUG",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: AppColors.C_797979,
                              ),),
                            Text("\$1114",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_797979
                              ),)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        child: Column(
                          children: [
                            Text("24 AUG",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: AppColors.C_797979,
                              ),),
                            Text("\$1114",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_797979
                              ),)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                        child: Column(
                          children: [
                            Text("25 AUG",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: AppColors.C_797979,
                              ),),
                            Text("\$1122",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_797979
                              ),)
                          ],
                        ),
                      ),
                      SizedBox(width: width*(17/375),),
                      Container(
                        width: width*(54.4/375),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6),),
                          color: AppColors.C_FC9A7D
                        ),
                        child: Center(
                          child: SvgPicture.asset(AppImages.calendar),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*(8/812),),
                Stack(
                  children: [Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: width,
                      height: height*(625/812),
                      child: ListView(
                        children: [
                          SizedBox(height: height*(12/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "09:45", clock2: "19:00\n", country: "TURKISH AIRLINES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1070", img: AppImages.turkish,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "11:00", clock2: "20:00\n", country: "Ethiopian Airlines", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1140", img: AppImages.ethiopian,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "09:45", clock2: "19:00\n", country: "ETIHAD AIRLINES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1210", img: AppImages.etihad,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "11:20", clock2: "07:20\n", country: "EMIRATES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1430", img: AppImages.emirates,),
                          SizedBox(height: height*(12/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "09:45", clock2: "19:00\n", country: "TURKISH AIRLINES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1070", img: AppImages.turkish,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "11:00", clock2: "20:00\n", country: "Ethiopian Airlines", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1140", img: AppImages.ethiopian,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "09:45", clock2: "19:00\n", country: "ETIHAD AIRLINES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1210", img: AppImages.etihad,),
                          SizedBox(height: height*(11/812),),
                          Airport(title: "NYC\n", subtitle: "DXB\n", clock1: "11:20", clock2: "07:20\n", country: "EMIRATES", flight_time: "17hrs 15mins", stop: "1 stop", day: "+1 Days", info: "FLIGHT INFO", price: "\$1430", img: AppImages.emirates,),
                        ],
                      ),
                    ),
                  ),Positioned(
                    right: 118,
                    bottom: 10,
                    child: Container(
                      width: width * (152 / 375),
                      height: height * (40 / 812),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            AppColors.C_6760D4,
                            AppColors.C_A435FC
                          ]),
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 10,
                                color: AppColors.C_6760D4,
                                spreadRadius: 4,
                                offset: Offset(0, 5))
                          ]),
                      child: Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppImages.vector),
                          SizedBox(
                            width: width * (4 / 375),
                          ),
                          const Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  )],
                ),
              ],
            )
          )
        ),
      );
  }
}
