import 'package:event_app/configs/colors.dart';
import 'package:event_app/widgets/stack_participant.dart';
import 'package:flutter/material.dart';

class CardEventThisMonth extends StatelessWidget {
  const CardEventThisMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.whiteColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
              fit: BoxFit.fill,
              width: 60,
              height: double.infinity,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Halloween Festival",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Row(
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    size: 14,
                    color: AppColors.greyColor,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Pontianak, Indonesia",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greyTextColor,
                    ),
                  )
                ],
              ),
              const Expanded(
                child: StackParticipant(
                  width: 25,
                  height: 25,
                  fontSize: 12,
                  positionText: 95,
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 35,
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Feb",
                ),
                Text(
                  "12",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
