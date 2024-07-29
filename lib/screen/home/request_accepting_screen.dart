import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/icon_title_button.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/common_widget/select_icon_title_button.dart';
import 'package:maintenance_service_app/screen/home/payment_method_screen.dart';
import 'package:maintenance_service_app/screen/message/chat_message_screen.dart';

class RequestAcceptScreen extends StatefulWidget {
  const RequestAcceptScreen({super.key});

  @override
  State<RequestAcceptScreen> createState() => _RequestAcceptScreenState();
}

class _RequestAcceptScreenState extends State<RequestAcceptScreen> {
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
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 5, offset: Offset(0, -2))
            ]),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/img/u2.png",
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alex Harris",
                                  style: TextStyle(
                                      color: TColor.primaryText, fontSize: 17),
                                ),
                                Text(
                                  "Plumber",
                                  style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: TColor.primary,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "4.2",
                                    style: TextStyle(
                                        color: TColor.placeholder,
                                        fontSize: 12),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "\$ 20",
                            style: TextStyle(
                                color: TColor.primaryText, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconTitleButton(
                            icon: "assets/img/calling.png",
                            title: "Call Now", 
                            onPressed: () {}),
                      ),
                      Expanded(
                        child: IconTitleButton(
                            icon: "assets/img/share.png",
                            title: "Share Detail",
                            onPressed: () {}),
                      ),
                      Expanded(
                        child: IconTitleButton(
                            icon: "assets/img/chat.png",
                            title: "Chat",
                            onPressed: () {
                              context.push(const ChatMessageScreen());
                            }),
                      ),
                      Expanded(
                        child: IconTitleButton(
                            icon: "assets/img/more.png",
                            title: "More",
                            onPressed: () {}),
                      ),
                    ],
                  ),
                )
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
                        title: "Cancel Request",
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
                        title: "Pay Now",
                        onPressed: () {
                          context.push( const PaymentMethodScreen() );
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
