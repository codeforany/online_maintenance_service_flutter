import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/link_button.dart';
import 'package:maintenance_service_app/common_widget/select_icon_title_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bannerArr = [
    "assets/img/banner1.png",
    "assets/img/banner2.png",
    "assets/img/banner3.png",
    "assets/img/banner4.png",
  ];

  PageController controller = PageController();
  int selectPage = 0;

  int selectCatIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F4F3),
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
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      height: 85,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SelectIconTitleButton(
                            title: "Hygiene",
                            icon: "assets/img/hygiene.png",
                            isSelect: selectCatIndex == 0,
                            onPressed: () {
                              setState(() {
                                selectCatIndex = 0;
                              });
                            },
                          ),
                          SelectIconTitleButton(
                            title: "Electrical",
                            icon: "assets/img/electric_plug.png",
                            isSelect: selectCatIndex == 1,
                            onPressed: () {
                              setState(() {
                                selectCatIndex = 1;
                              });
                            },
                          ),
                          SelectIconTitleButton(
                            title: "Appliances",
                            icon: "assets/img/appllication.png",
                            isSelect: selectCatIndex == 2,
                            onPressed: () {
                              setState(() {
                                selectCatIndex = 2;
                              });
                            },
                          ),
                          SelectIconTitleButton(
                            title: "Plumbing",
                            icon: "assets/img/plumbing.png",
                            isSelect: selectCatIndex == 3,
                            onPressed: () {
                              setState(() {
                                selectCatIndex = 3;
                              });
                            },
                          ),
                          SelectIconTitleButton(
                            title: "AC Repair",
                            icon: "assets/img/ac_repair.png",
                            isSelect: selectCatIndex == 4,
                            onPressed: () {
                              setState(() {
                                selectCatIndex = 4;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SizedBox(
                        height: context.width * 0.57,
                        child: PageView.builder(
                            controller: controller,
                            itemCount: bannerArr.length,
                            itemBuilder: (context, index) {
                              var image = bannerArr[index];
                              return SizedBox(
                                width: context.width,
                                height: context.width * 0.57,
                                child: Image.asset(
                                  image,
                                  width: context.width,
                                  height: context.width * 0.57,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: bannerArr.map((image) {
                            var index = bannerArr.indexOf(image);

                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: selectPage == index ?  20 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: selectPage == index ? TColor.primary : Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
