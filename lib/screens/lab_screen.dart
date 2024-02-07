import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/custom_widgets.dart';

class LabTestsScreen extends StatefulWidget {
  const LabTestsScreen({super.key, required this.title});

  final String title;

  @override
  State<LabTestsScreen> createState() => _LabTestsScreenState();
}

class _LabTestsScreenState extends State<LabTestsScreen> {
  List<String> carouselIcons = [
    'assets/textTube.png',
    'assets/bolt.png',
    'assets/description.png'
  ];
  List<String> carouselText = [
    "Sample: Blood",
    "Fasting: Yes",
    "Reports In: 12 Hours",
  ];
  int currentIndex = 0;
  AssetImage? assetImage;
  var icons = ['assets/home.png', 'assets/shield.png', 'assets/secure.png'];
  var text = [
    "Home Collection",
    "NABL Accreddited",
    "100% Secure",
  ];
  CustomWidgets customWidgets = CustomWidgets();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFEFF2F3),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 121,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Gradient.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16.0, left: 27, right: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customWidgets.customTextWidget(
                            underline: false,
                            text: 'Tests and Diagnostics',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          Container(
                              width: 86,
                              height: 24,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 0.50, color: Color(0xFFC00606)),
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/locationIcon.png',
                                    height: 14,
                                    width: 14,
                                  ),
                                  // SvgPicture.asset('assets/location_icon.svg',height: 14,width:14,),
                                  customWidgets.customTextWidget(
                                    underline: false,
                                    text: 'Mumbai',
                                    color: const Color(0xFF7444FF),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 27, right: 27),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0XFF3FD826),
                              Color(0XFFD82686),
                              Color(0XFFD08C26),
                              Color(0XFF958811),
                              Color(0XFFAC68F0),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        height: 42,
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.88),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    height: 0.5,
                                  ),
                                  hintText: 'Search Packages or tests',
                                  icon: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 4, left: 8),
                                    child: Image.asset(
                                      'assets/dna-animation.png',
                                      height: 37,
                                    ),
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  focusedErrorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  disabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    customWidgets.homeScreenIconWithText(
                      icons: icons,
                      text: text,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Material(
                    elevation: 5,
                    child: SizedBox(
                      height: 40,
                      width: width,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/use_code.png",
                            height: 40,
                            width: width,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 23, right: 23),
                            child: Center(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    customWidgets.customTextSpan(
                                      text: 'Use code ',
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    customWidgets.customTextSpan(
                                      text: 'WELLWHL ',
                                      color: const Color(0xFF7444FF),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    customWidgets.customTextSpan(
                                      text:
                                          ' for extra 15% off during checkout ',
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        left: 16,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customWidgets.bookWidget(
                            text: "Lab Tests",
                            image: 'assets/kit.png',
                          ),
                          const SizedBox(width: 20),
                          customWidgets.bookWidget(
                            text: "Packages",
                            image: 'assets/package.png',
                          )
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 22,
                      right: 25,
                    ),
                    child: customWidgets.headingWithViewAllText(
                      text: 'Popular Packages',
                      text2: "View all",
                      underline: true,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 16),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 175,
                              child: CarouselSlider.builder(
                                  itemCount: 3,
                                  itemBuilder: (BuildContext context, int index,
                                      int pageViewIndex) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20.0, bottom: 8),
                                      child: Material(
                                        borderRadius: BorderRadius.circular(10),
                                        elevation: 2,
                                        child: Container(
                                            width: 275,
                                            padding: const EdgeInsets.all(15),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                customWidgets.dualTextWidget(
                                                  text: 'Full Body Checkup',
                                                  text2: "₹999",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                  fontSize2: 14.0,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'assets/bar_chart.png'),
                                                        customWidgets.customTextWidget(
                                                            text:
                                                                '10 Parameters',
                                                            color: const Color(
                                                                0xFF219653),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            underline: false)
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        customWidgets
                                                            .customTextWidget(
                                                                text: '50%',
                                                                color: const Color(
                                                                    0xFF219653),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                underline:
                                                                    false),
                                                        const SizedBox(
                                                            width: 5),
                                                        const Text(
                                                          '₹2199',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF828282),
                                                            fontSize: 14,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                customWidgets
                                                    .carouselIconWithText(
                                                  icons: carouselIcons,
                                                  text: carouselText,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    customWidgets.customButtons(
                                                        height: 26.0,
                                                        border: false,
                                                        color: const Color(
                                                            0xFF7444FF),
                                                        text: 'View Details'),
                                                    const SizedBox(width: 10),
                                                    customWidgets.customButtons(
                                                        height: 26.0,
                                                        border: true,
                                                        color: const Color(
                                                            0xFF7444FF),
                                                        text: 'Add to Cart'),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                      height: 400,
                                      aspectRatio: 4.0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 5),
                                      autoPlayAnimationDuration:
                                          const Duration(seconds: 1),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: false,
                                      enlargeFactor: 0.3,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      }))),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DotsIndicator(
                            position: currentIndex,
                            dotsCount: 3,
                            decorator: DotsDecorator(
                              color: Colors.grey,
                              activeColor: const Color(0xFFDDD2FF),
                              size: const Size.square(9.0),
                              activeSize: const Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 22,
                      right: 25,
                    ),
                    child: customWidgets.headingWithViewAllText(
                      text: 'Popular Categories',
                      text2: "View all",
                      underline: true,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 11.0, left: 20, right: 20),
                    child: Container(
                      height: width < 450 ? 343 : 450,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          customWidgets.categoriesWidget()
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                    child: Container(
                      height: 345,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/pie_chart.png'),
                              const SizedBox(width: 5),
                              customWidgets.customTextWidget(
                                  text: 'How does it work?',
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  underline: false),
                            ],
                          ),
                          const SizedBox(height: 13),
                          customWidgets.howDoesItWorkTextWidgets(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
