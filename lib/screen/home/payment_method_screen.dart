import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/icon_select_button.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/screen/home/order_summary_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int selectMethod = 1;
  bool selectSavePaypal = false;

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
          selectMethod == 0
              ? "Credit Card"
              : selectMethod == 1
                  ? "PayPal"
                  : "Cash On Deliver",
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
              child: (selectMethod == 1)
                  ? ListView.separated(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 30),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/img/paypal.png",
                                    width: 70,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/img/h_more.png",
                                      width: 20,
                                      height: 20,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "Name on Card",
                                style: TextStyle(
                                  color: TColor.placeholder,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "123456@paypal.me",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Added on 15/07/2024",
                                style: TextStyle(
                                  color: TColor.placeholder,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                      itemCount: 1,
                    )
                  : selectMethod == 2
                      ? Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 30,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 25),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                    )
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Cash on delivery",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Pay once you got order at your home",
                                              style: TextStyle(
                                                color: TColor.placeholder,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "assets/img/select_dot.png",
                                          width: 20,
                                          height: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
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
                                  BoxShadow(
                                      color: Colors.black12, blurRadius: 2)
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Master Card",
                                                  style: TextStyle(
                                                    color: TColor.secondaryText,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
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
                                          onTap: () {},
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
                                ],
                              ),
                            ),
                          ],
                        )),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconSelectButton(
                        icon: "assets/img/credit_card_payment.png",
                        isSelect: selectMethod == 0,
                        onPressed: () {
                          setState(() {
                            selectMethod = 0;
                          });
                        }),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: IconSelectButton(
                        icon: "assets/img/ic_paypal.png",
                        isSelect: selectMethod == 1,
                        onPressed: () {
                          setState(() {
                            selectMethod = 1;
                          });
                        }),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: IconSelectButton(
                        icon: "assets/img/Ic_saved_cards.png",
                        isSelect: selectMethod == 2,
                        onPressed: () {
                          setState(() {
                            selectMethod = 2;
                          });
                        }),
                  )
                ],
              )),
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
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          selectSavePaypal = !selectSavePaypal;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            selectSavePaypal
                                ? "assets/img/check_box_check.png"
                                : "assets/img/check_box.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Save Paypal ID",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    )),
                    RoundButton(
                      width: 150,
                      title: "Next",
                      onPressed: () {
                        context.push(const OrderSummaryScreen());
                      },
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
