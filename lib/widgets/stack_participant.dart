import 'package:event_app/configs/colors.dart';
import 'package:flutter/material.dart';

class StackParticipant extends StatelessWidget {
  final double width;
  final double height;
  final double fontSize;
  final double positionText;
  const StackParticipant(
      {required this.fontSize,
      required this.width,
      required this.height,
      required this.positionText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Positioned(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.whiteColor,
                width: 2,
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.whiteColor,
                width: 2,
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 32,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.whiteColor,
                width: 2,
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 48,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.whiteColor,
                width: 2,
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 64,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.whiteColor,
                width: 2,
              ),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: positionText,
          child: Text(
            "250+ Joined",
            style: TextStyle(color: AppColors.primaryColor, fontSize: fontSize),
          ),
        )
      ],
    );
  }
}
