import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/screen/home/payment_method_screen.dart';

class RateForServiceUserScreen extends StatefulWidget {
  const RateForServiceUserScreen({super.key});

  @override
  State<RateForServiceUserScreen> createState() =>
      _RateForServiceUserScreenState();
}

class _RateForServiceUserScreenState extends State<RateForServiceUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/menu.png",
          ),
        ),
        title: Text(
          "Request Accepting",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Image.asset(
              "assets/img/back.png",
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: TColor.secondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "How war your Job?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Alex Harris",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 45,
                  unratedColor: Colors.white54,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RoundButton(
                        title: "Later",
                        type: RoundButtonType.line,
                        lineColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: RoundButton(
                        title: "Rate For Service",
                        onPressed: () {
                          context.push(const PaymentMethodScreen());
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
