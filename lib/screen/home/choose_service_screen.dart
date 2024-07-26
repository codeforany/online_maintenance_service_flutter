import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/screen/profile/rate_of_service_screen.dart';

class ChooseServiceScreen extends StatefulWidget {
  const ChooseServiceScreen({super.key});

  @override
  State<ChooseServiceScreen> createState() => _ChooseServiceScreenState();
}

class _ChooseServiceScreenState extends State<ChooseServiceScreen> {
  bool isHome = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      appBar: AppBar(
        backgroundColor: TColor.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.push(const RateOfServiceScreen());
          },
          icon: Image.asset(
            "assets/img/menu.png",
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              "assets/img/white_logo.png",
              height: 40,
              fit: BoxFit.fitHeight,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi Choose",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Your ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Service Area",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHome = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    !isHome
                                        ? "assets/img/select_radio.png"
                                        : "assets/img/unselect_radio.png",
                                    width: 25,
                                    height: 25,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Image.asset(
                                  "assets/img/1.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Text(
                                "Business",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Organisation",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isHome = true;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    isHome
                                        ? "assets/img/select_radio.png"
                                        : "assets/img/unselect_radio.png",
                                    width: 25,
                                    height: 25,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25),
                                child: Image.asset(
                                  "assets/img/2.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Personal",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: TColor.secondary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 17,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search for service ...",
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Location:",
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 14,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Service Location near -",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Jaipur 302019",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: RoundButton(
                            title: "Late",
                            width: 100,
                            lineColor: Colors.white,
                            type: RoundButtonType.line,
                            onPressed: () {}),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: RoundButton(
                              title: "Search Now", onPressed: () {})),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
