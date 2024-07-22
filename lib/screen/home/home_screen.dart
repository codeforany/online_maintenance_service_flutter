import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common_widget/link_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
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
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
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
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                      height: 30,
                    ),
                    LinkButton(title: "Cleaning", onPressed: () {}),
                    const SizedBox(
                      width: 8,
                    ),
                    LinkButton(title: "Plumbing", onPressed: () {}),
                    const SizedBox(
                      width: 8,
                    ),
                    LinkButton(title: "Painter", onPressed: () {}),
                    const SizedBox(
                      width: 8,
                    ),
                    LinkButton(title: "Battery", onPressed: () {}),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                      height: 30,
                    ),
                    Image.asset(
                      "assets/img/location.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Service Location near -",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Jaipur 302019",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "assets/img/down.png",
                            width: 15,
                            height: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
