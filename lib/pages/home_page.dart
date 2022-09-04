import 'package:event_app/configs/colors.dart';
import 'package:event_app/resources/constant/named_routes.dart';
import 'package:event_app/widgets/card_event_this_month.dart';
import 'package:event_app/widgets/card_popular_event.dart';
import 'package:event_app/widgets/my_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: MyNavigationBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildSearch(),
              const SizedBox(height: 24),
              ..._buildPopularEvent(context),
              const SizedBox(height: 24),
              ..._buildEventThisMonth(),
            ],
          ),
        ),
      ),
    );
  }

  _buildHeader() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Current Location",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Row(children: const [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.greyColor,
                    size: 16,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Jakarta, Indonesia",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.greyTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 64,
            )
          ],
        ),
      );

  _buildSearch() => Container(
        height: 48,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: AppColors.whiteColor,
        ),
        child: Row(
          children: const [
            Icon(
              Icons.search_rounded,
              color: AppColors.greyTextColor,
              size: 16,
            ),
            SizedBox(width: 4),
            Text(
              "Search event...",
              style: TextStyle(
                  color: AppColors.greyTextColor, fontWeight: FontWeight.w400),
            )
          ],
        ),
      );

  _buildPopularEvent(BuildContext context) => [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Popular Event",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.greyTextColor),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          height: 270,
          padding: const EdgeInsets.only(left: 16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              for (int i = 0; i < 5; i++)
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, NamedRoutes.detailScreen),
                  child: const CardPopularEvent(),
                ),
            ],
          ),
        )
      ];

  _buildEventThisMonth() => [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Event This Month",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.greyTextColor),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    CardEventThisMonth(),
                    CardEventThisMonth(),
                    CardEventThisMonth(),
                  ],
                ),
              )
            ],
          ),
        ),
      ];
}
