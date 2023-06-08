import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../utils/icons.dart';

class Airport extends StatelessWidget {
   Airport({super.key, required this.title, required this.subtitle, required this.clock1, required this.clock2, required this.country, required this.flight_time, required this.stop, required this.day, required this.info, required this.price, required this.img});

  final String country;
  final String title;
  final String subtitle;
  final String flight_time;
  final String stop;
  final String clock1;
  final String clock2;
  final String day;
  final String info;
  final String price;
  final String img;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
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
                Image.asset(img,height: 18,width: 31,),
                Text(country,style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: AppColors.C_333333
                ),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(flight_time,
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
                RichText(text: TextSpan(
                    text: title,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: AppColors.C_555555
                    ),
                    children: [TextSpan(
                        text: clock1,
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
                    Text(stop,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.C_7F7F7F
                      ),),
                  ],
                ),

                Column(
                  children: [
                    RichText(text: TextSpan(
                      text: subtitle,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: AppColors.C_555555
                      ),
                      children: [TextSpan(
                        text: clock2,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: AppColors.C_333333
                        ),
                        children: [TextSpan(
                            text: day,
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
                Text(info,style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    letterSpacing: 1,
                    color: AppColors.C_A5A5A5
                ),),
                SizedBox(width: width*(188/375),),
                Text(price,
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
    );
  }
}
