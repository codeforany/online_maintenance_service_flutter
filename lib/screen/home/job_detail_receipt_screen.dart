import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';

class JobDetailReceiptScreen extends StatefulWidget {
  const JobDetailReceiptScreen({super.key});

  @override
  State<JobDetailReceiptScreen> createState() => _JobDetailReceiptScreenState();
}

class _JobDetailReceiptScreenState extends State<JobDetailReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: false,
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/menu.png",
          ),
        ),
        title: Text(
          "Jobs Details & Receipt",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "154.47",
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 30,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Payment made successfully by Card",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 20,
                // fontWeight: FontWeight.bold
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Divider(
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Job Details",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "2Hrs.30min",
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 12,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "new shower installed with wall sockets and  general  service and cleaning  pipe...",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 15,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Divider(
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date & Time",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "22 Jul'24 at 11:30 pm",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Service Type",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Plumber",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Job Type",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Installation",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You rated",
                        style: TextStyle(
                          color: TColor.placeholder,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "\"Alex Harris\"",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 13,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/img/u2.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      IgnorePointer(
                        ignoring: true,
                        child: RatingBar.builder(
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
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF2F4F3),
              ),
              width: double.maxFinite,
              child: Text(
                "RECEIPT",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Job Fees",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$100.25",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$10.00",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "+ Parts Amt.",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$50.50",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$10.00",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Topup Added",
                        style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$25.00",
                        style: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: TColor.secondaryText,
                   
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                   
                    dashGapRadius: 0.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Payment",
                        style: TextStyle(
                            color: Color(0xff2FA23C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$175.25",
                        style: TextStyle(
                            color: Color(0xff2FA23C),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "This job was towards you expectation you received Guaranteed Good Service",
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
