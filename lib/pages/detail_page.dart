import 'package:event_app/configs/colors.dart';
import 'package:event_app/resources/constant/named_routes.dart';
import 'package:event_app/widgets/circle_button.dart';
import 'package:event_app/widgets/stack_participant.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                child: Column(
                  children: [
                    _buildAppBar(),
                    const SizedBox(height: 24),
                    _buildCardImage(),
                    const SizedBox(height: 16),
                    _buildDescription(),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBottomBar(context),
          )
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) => ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
          decoration: const BoxDecoration(color: AppColors.whiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Price",
                    style:
                        TextStyle(fontSize: 12, color: AppColors.greyTextColor),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: const [
                      Text(
                        "\$100",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "/Person",
                        style: TextStyle(
                            fontSize: 12, color: AppColors.greyTextColor),
                      )
                    ],
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, NamedRoutes.ticketScreen),
                style: ElevatedButton.styleFrom(
                    primary: AppColors.primaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    maximumSize: const Size(200, 150)),
                child: const Text(
                  "Get a Ticket",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      );

  Widget _buildCardImage() => Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16)),
          ),
          Container(
            width: double.infinity,
            height: 310,
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://user-images.githubusercontent.com/31367048/171917578-5cb15089-e7a3-475c-bf06-d823faccf8ce.png",
                ),
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 22,
            child: Container(
              height: 65,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Feb",
                    style: TextStyle(fontWeight: FontWeight.w500),
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
          )
        ],
      );

  Widget _buildAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleButton(
            icon: Icons.arrow_back_ios_rounded,
          ),
          Text(
            "Detail",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          CircleButton(icon: Icons.more_horiz)
        ],
      );

  _buildDescription() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Festival Chinatown",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.greyColor,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Pontianak, Indonesia",
                          style: TextStyle(color: AppColors.greyTextColor),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 65,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primaryLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "\$100",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            const StackParticipant(
              fontSize: 14,
              width: 30,
              height: 30,
              positionText: 100,
            ),
            const SizedBox(height: 16),
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                text:
                    "Festival Chinatown is a festival that is held in Pontianak West Kalimantan, Indonesia. This festival is held every year in the month of February, ",
                style: TextStyle(
                  color: AppColors.greyTextColor,
                  fontSize: 12,
                  height: 1.75,
                ),
                children: [
                  TextSpan(
                    text: "Read More...",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 64),
          ],
        ),
      );
}
