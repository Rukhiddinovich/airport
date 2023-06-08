import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                Stack(
                  children: [Container(
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
                  ),]
                ),
                SizedBox(height: height*(12/812),),
                Container(
                  width: width*(335/375),
                  height: height*(120/812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.turkish,height: 18,width: 31,),
                            const Text("TURKISH AIRLINES",style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: AppColors.C_333333
                            ),),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("17hrs 15mins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.C_7F7F7F,
                            ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(text: const TextSpan(
                              text: "NYC\n",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: AppColors.C_555555
                              ),
                              children: [TextSpan(
                                text: "09:45",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: AppColors.C_333333
                                )
                              )]
                            )),
                            Column(
                              children: [
                                SizedBox(height: height*(10/812),),
                                SvgPicture.asset(AppImages.airplane),
                                const Text("1 stop",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: AppColors.C_7F7F7F
                                ),),
                              ],
                            ),

                            Column(
                              children: [
                                RichText(text: const TextSpan(
                                  text: "DXB\n",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    color: AppColors.C_555555
                                  ),
                                  children: [TextSpan(
                                    text: "19:00\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: AppColors.C_333333
                                    ),
                                    children: [TextSpan(
                                      text: "+1 Days",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.C_EB5757
                                      )
                                    )],
                                  ),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*(8/812),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppImages.exclamation),
                            SizedBox(width: width*(5/375),),
                            const Text("FLIGHT INFO",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 1,
                                color: AppColors.C_A5A5A5
                            ),),
                            SizedBox(width: width*(188/375),),
                            const Text("\$1070",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_6760D4
                              ),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: height*(11/812),),
                Container(
                  width: width*(335/375),
                  height: height*(120/812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.ethiopian,height: 18,width: 31,),
                            const Text("Ethiopian Airlines",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.C_333333
                            ),),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("17hrs 15mins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.C_7F7F7F,
                            ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(text: const TextSpan(
                                text: "NYC\n",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    color: AppColors.C_555555
                                ),
                                children: [TextSpan(
                                    text: "11:00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    )
                                )]
                            )),
                            Column(
                              children: [
                                SizedBox(height: height*(10/812),),
                                SvgPicture.asset(AppImages.airplane),
                                const Text("1 stop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColors.C_7F7F7F
                                  ),),
                              ],
                            ),

                            Column(
                              children: [
                                RichText(text: const TextSpan(
                                  text: "DXB\n",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: AppColors.C_555555
                                  ),
                                  children: [TextSpan(
                                    text: "20:00\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    ),
                                    children: [TextSpan(
                                        text: "+1 Days",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.C_EB5757
                                        )
                                    )],
                                  ),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*(8/812),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppImages.exclamation),
                            SizedBox(width: width*(5/375),),
                            const Text("FLIGHT INFO",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 1,
                                color: AppColors.C_A5A5A5
                            ),),
                            SizedBox(width: width*(188/375),),
                            const Text("\$1140",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_6760D4
                              ),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: height*(11/812),),
                Container(
                  width: width*(335/375),
                  height: height*(120/812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.etihad,height: 18,width: 31,),
                            const Text("Ethiopian Airlines",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.C_333333
                            ),),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("17hrs 15mins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.C_7F7F7F,
                            ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(text: const TextSpan(
                                text: "NYC\n",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    color: AppColors.C_555555
                                ),
                                children: [TextSpan(
                                    text: "09:45",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    )
                                )]
                            )),
                            Column(
                              children: [
                                SizedBox(height: height*(10/812),),
                                SvgPicture.asset(AppImages.airplane),
                                const Text("1 stop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColors.C_7F7F7F
                                  ),),
                              ],
                            ),

                            Column(
                              children: [
                                RichText(text: const TextSpan(
                                  text: "DXB\n",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: AppColors.C_555555
                                  ),
                                  children: [TextSpan(
                                    text: "19:00\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    ),
                                    children: [TextSpan(
                                        text: "+1 Days",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.C_EB5757
                                        )
                                    )],
                                  ),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*(8/812),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppImages.exclamation),
                            SizedBox(width: width*(5/375),),
                            const Text("FLIGHT INFO",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 1,
                                color: AppColors.C_A5A5A5
                            ),),
                            SizedBox(width: width*(188/375),),
                            const Text("\$1210",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_6760D4
                              ),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: height*(11/812),),
                Container(
                  width: width*(335/375),
                  height: height*(120/812),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(AppImages.emirates,height: 18,width: 31,),
                            const Text("Emirates",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColors.C_333333
                            ),),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("17hrs 15mins",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.C_7F7F7F,
                            ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(text: const TextSpan(
                                text: "NYC\n",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    color: AppColors.C_555555
                                ),
                                children: [TextSpan(
                                    text: "11:20",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    )
                                )]
                            )),
                            Column(
                              children: [
                                SizedBox(height: height*(10/812),),
                                SvgPicture.asset(AppImages.airplane),
                                const Text("1 stop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: AppColors.C_7F7F7F
                                  ),),
                              ],
                            ),

                            Column(
                              children: [
                                RichText(text: const TextSpan(
                                  text: "DXB\n",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: AppColors.C_555555
                                  ),
                                  children: [TextSpan(
                                    text: "07:20\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: AppColors.C_333333
                                    ),
                                    children: [TextSpan(
                                        text: "+1 Days",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.C_EB5757
                                        )
                                    )],
                                  ),
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: height*(8/812),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppImages.exclamation),
                            SizedBox(width: width*(5/375),),
                            const Text("FLIGHT INFO",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                letterSpacing: 1,
                                color: AppColors.C_A5A5A5
                            ),),
                            SizedBox(width: width*(188/375),),
                            const Text("\$1430",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.C_6760D4
                              ),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: height*(50/812),),
                Positioned(
                  right: 100,
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
                )

              ],
            )
          )
        ),
      );
  }
}