import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';

class RateOfServiceScreen extends StatefulWidget {
  const RateOfServiceScreen({super.key});

  @override
  State<RateOfServiceScreen> createState() => _RateOfServiceScreenState();
}

class _RateOfServiceScreenState extends State<RateOfServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: TColor.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/menu.png",
          ),
        ),
        centerTitle: false,
        title: Text(
          "Rate for Service",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/back.png",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  height: context.width * 0.5,
                  decoration: BoxDecoration(
                      color: TColor.primary,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(0, 2))
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.width * 0.14),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 35),
                    width: double.maxFinite,
                    height: context.width * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.width * 0.17),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.maxFinite,
                    height: context.width * 0.55,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.width * 0.2),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: context.width * 0.22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: TColor.primary,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4.2",
                              style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Alex, Harris",
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: Colors.black12,
                          height: 1,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "3250",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Total Jobs",
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )),
                            Container(
                              color: Colors.black12,
                              width: 1,
                              height: 60,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "2.5",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Yes",
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.width * 0.08),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius:
                            BorderRadius.circular(context.width * 0.3),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              offset: Offset(0, 2))
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(context.width * 0.3),
                      child: Image.asset(
                        "assets/img/u2.png",
                        width: context.width * 0.3,
                        height: context.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PERSONAL INFO",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "+91 1111 11111",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "codeforany@gmail",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "English and Hindi",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black12,
                    height: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60, top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Surat, Gujarat, India",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/img/u1.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "SIVAG",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          unratedColor: Colors.black12,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Service good,",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
