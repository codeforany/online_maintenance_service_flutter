import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/common_widget/select_icon_title_button.dart';
import 'package:maintenance_service_app/screen/home/request_accepting_screen.dart';

class BookingServiceScreen extends StatefulWidget {
  const BookingServiceScreen({super.key});

  @override
  State<BookingServiceScreen> createState() => _BookingServiceScreenState();
}

class _BookingServiceScreenState extends State<BookingServiceScreen> {
  List catArr = [
    {
      "title": "Hygiene",
      "image": "assets/img/hygiene.png",
    },
    {
      "title": "Electrical",
      "image": "assets/img/electric_plug.png",
    },
    {
      "title": "Appliances",
      "image": "assets/img/appllication.png",
    },
    {
      "title": "Plumbing",
      "image": "assets/img/plumbing.png",
    },
    {
      "title": "AC Repair",
      "image": "assets/img/ac_repair.png",
    },
  ];

  Map? selectItem;

  final MapController controller = MapController();

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
          "Book Your Service",
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
              child: Stack(
            alignment: Alignment.topCenter,
            children: [
              FlutterMap(
                mapController: controller,
                options: const MapOptions(
                  initialCenter: LatLng(21.170240, 72.831062),
                  initialZoom: 12,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    userAgentPackageName: "com.example.app",
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      left: 25,
                      right: 25,
                    ),
                    height: 70,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 2)
                        ]),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: TColor.primary,
                                  borderRadius: BorderRadius.circular(7.5)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Service at",
                              style: TextStyle(
                                color: TColor.placeholder,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "34 Keshar Vihar , Jaipurt",
                          maxLines: 1,
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    lineLength: 60,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: TColor.secondaryText,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  Image.asset(
                    "assets/img/center_pin.png",
                    width: 30,
                    height: 50,
                  )
                ],
              )
            ],
          )),
          Container(
            height: 110,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 5, offset: Offset(0, -2))
            ]),
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var obj = catArr[index];

                return SelectIconTitleButton(
                  title: obj["title"] as String? ?? "",
                  icon: obj["image"] as String? ?? "",
                  isSelect: selectItem == obj,
                  onPressed: () {
                    setState(() {
                      selectItem = obj;
                    });
                  },
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
              itemCount: catArr.length,
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
                    const Text(
                      "Per Hour Charges:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$20",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Note: ",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                      ),
                    ),
                    const Text(
                      "Part price is additional",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: TextField(
                    maxLines: 10,
                    minLines: 3,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 17,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Enter job description for service.",
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RoundButton(
                        title: "Service Later",
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
                        title: "Book Now",
                        onPressed: () {
                          context.push(const RequestAcceptScreen());
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
