import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/screen/home/edit_card_screen.dart';
import 'package:maintenance_service_app/screen/home/job_detail_receipt_screen.dart';

class OrderSummaryScreen extends StatefulWidget {
  const OrderSummaryScreen({super.key});

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  bool isSelectAddress = false;
  bool isSelectPayment = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
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
          "Cash On Deliver",
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
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 2)
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Address for Service",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "34 Keshar Vihar ,Civil line , near high, court, Jaipur",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          isSelectAddress = !isSelectAddress;
                          setState(() {});
                        },
                        child: Image.asset(
                          isSelectAddress
                              ? "assets/img/check_box_check.png"
                              : "assets/img/check_box.png",
                          width: 25,
                          height: 25,
                        ),
                      )
                    ],
                  ),
                ),
                
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical:0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 2)
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Payment",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/img/master_card.png",
                                  width: 70,
                                ),

                                const SizedBox(width: 15,),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Master Card",
                                      style: TextStyle(
                                        color: TColor.secondaryText,
                                        fontSize: 13,
                                      ),
                                    ),

                                  const  SizedBox(height: 8,),

                                    Text(
                                      "**** **** **** 4748",
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                context.push( const EditCardScreen() );
                              },
                              child: Text(
                                "Update",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          isSelectPayment = !isSelectPayment;
                          setState(() {});
                        },
                        child: Image.asset(
                          isSelectPayment
                              ? "assets/img/check_box_check.png"
                              : "assets/img/check_box.png",
                          width: 25,
                          height: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: TColor.secondary,
            ),
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RoundButton(
                        title: "Back",
                        type: RoundButtonType.line,
                        lineColor: Colors.white,
                        onPressed: () {
                          context.pop();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: RoundButton(
                        title: "PAY",
                        onPressed: () {
                          context.push(const JobDetailReceiptScreen());
                        },
                      ),
                    ),
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
