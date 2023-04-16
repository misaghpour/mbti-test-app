import 'package:english_mbti_test_app/constants.dart';
import 'package:english_mbti_test_app/controllers/exam_controller.dart';
import 'package:english_mbti_test_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ResultBottomWidget extends StatelessWidget {
  ResultBottomWidget({
    super.key,
  });

  final ExamController _ = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: NavigationBtn(
              title: 'Main',
              color: _.result.lightColor,
              isNext: false,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: NavigationBtn(
              title: 'Description',
              color: _.result.darkColor,
              isNext: true,
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationBtn extends StatelessWidget {
  const NavigationBtn({
    super.key,
    required this.title,
    required this.color,
    required this.isNext,
  });

  final String title;
  final Color color;
  final bool isNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(25)),
      child: isNext
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: Fonts.SemiBold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 12,
                ),
                SvgPicture.asset(
                  Assets.NEXT_ICON,
                  height: 16,
                  color: Colors.white,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.PREVIOUS_ICON,
                  height: 16,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: Fonts.SemiBold,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ],
            ),
    );
  }
}
