// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:myntra_insider/models/big_box_categories.dart';
import 'package:myntra_insider/models/categories.dart';
import 'package:myntra_insider/services/big_box_category_operations.dart';
import 'package:myntra_insider/services/category_operations.dart';
import 'package:slide_countdown/slide_countdown.dart';
//import 'package:dots_indicator/dots_indicator.dart';

class BecomeInsider extends StatefulWidget {
  const BecomeInsider({super.key});

  @override
  State<BecomeInsider> createState() => _BecomeInsiderState();
}

class _BecomeInsiderState extends State<BecomeInsider> {
  int? _value = 0;
  List choices = ["Fashion", "Beauty"];
  int selectedIndex = 0;
  final _currentindex = 0;

  Widget createCategory(Category category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 75,
            width: 75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(category.imageUrl, fit: BoxFit.fill),
            ),
          ),
        ),
        Text(
          category.categoryName,
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Akatab",
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget createCategoryList() {
    List<Category> categorylist = CategoryOperations.getCategory();
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorylist.length,
              itemBuilder: (BuildContext context, int index) {
                return createCategory(categorylist[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget createBigBoxCategory(BigBoxCategory bigBoxCategory) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 500,
          child: ClipRRect(
              child: Image.network(
            bigBoxCategory.imgesUrl,
            fit: BoxFit.fill,
          )),
        )
      ],
    );
  }

  Widget createBigBoxCategoryList() {
    var _selectedIndex = 0;
    List<BigBoxCategory> bigBoxCategoryList =
        BigBoxCategoryOPeration.getBigBoxCategory();
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 510,
            child: PageView.builder(
              controller: PageController(viewportFraction: 1.0),
              onPageChanged: (index) {
                setState(() => _selectedIndex = index);
              },
              scrollDirection: Axis.horizontal,
              itemCount: bigBoxCategoryList.length,
              itemBuilder: (BuildContext context, index) {
                return createBigBoxCategory(bigBoxCategoryList[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  bigBoxCategoryList.length,
                  ((index) => Indicator(
                      isActive: _selectedIndex == index ? true : false)))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
              fontFamily: "Akatab", fontSize: 12, fontWeight: FontWeight.w700),
          unselectedLabelStyle: TextStyle(
              fontFamily: "Akatab", fontSize: 12, fontWeight: FontWeight.w700),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          selectedItemColor: Colors.pinkAccent,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(AssetImage("assets/images/myntra logo.png"))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view_outlined,
                  color: Colors.grey.shade800,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.live_tv_outlined,
                  color: Colors.grey.shade800,
                ),
                label: 'Studio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/brand tag.png"),
                    size: 24, color: Colors.yellow.shade800),
                label: 'Brands'),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Colors.cyan[200],
                  radius: 10,
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Akatab",
                    ),
                  ),
                ),
                label: 'Shobhit'),
          ]),
      drawer: Drawer(
          width: 325,
          clipBehavior: Clip.none,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.zero,
              ),
              SizedBox(
                height: 155,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/blurimage.jpg",
                            ),
                            fit: BoxFit.fitWidth)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 2.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.0),
                                image: DecorationImage(
                                    scale: 27.0,
                                    image: AssetImage(
                                        "assets/images/profile.png"))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Shobhit SIngh",
                                style: TextStyle(
                                    fontFamily: "Akatab",
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 130.0,
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              ListTile(
                title: Text(
                  'Shop by Categories',
                  style: TextStyle(
                      fontFamily: "Akatab",
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade800),
                ),
                leading: Container(
                  child: Icon(
                    Icons.grid_view_outlined,
                    size: 18,
                  ),
                ),
                selected: selectedIndex == 0,
                selectedColor: Colors.grey.shade800,
                onTap: () {},
                enabled: false,
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Orders',
                  style: TextStyle(
                      fontFamily: "Akatab", color: Colors.grey.shade800),
                ),
                leading: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 18,
                  ),
                ),
                selected: selectedIndex == 0,
                selectedColor: Colors.grey.shade800,
                onTap: () {},
                enabled: false,
              ),
              Divider(),
              ListTile(
                title: Text(
                  'FAQs',
                  style: TextStyle(
                      fontFamily: "Akatab",
                      color: Colors.grey.shade800,
                      fontSize: 13),
                ),
                leading: Container(
                  width: 20,
                ),
                selected: selectedIndex == 0,
                selectedColor: Colors.grey.shade800,
                onTap: () {},
                enabled: false,
              ),
              ListTile(
                title: Text(
                  'CONTACT US',
                  style: TextStyle(
                      fontFamily: "Akatab",
                      color: Colors.grey.shade800,
                      fontSize: 13),
                ),
                leading: Container(
                  width: 20,
                ),
                selected: selectedIndex == 0,
                selectedColor: Colors.grey.shade800,
                onTap: () {},
                enabled: false,
              ),
              ListTile(
                title: Text(
                  'LEGAL',
                  style: TextStyle(
                      fontFamily: "Akatab",
                      color: Colors.grey.shade800,
                      fontSize: 13),
                ),
                leading: Container(
                  width: 20,
                ),
                selected: selectedIndex == 0,
                selectedColor: Colors.grey.shade800,
                onTap: () {},
                enabled: false,
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        actions: [
          Image(
            image: AssetImage(
              "assets/images/myntra insider.png",
            ),
            width: 80,
            height: 100,
          ),
          SizedBox(
            width: 48,
          ),
          Icon(
            Icons.search,
            grade: 0,
            opticalSize: 48,
            weight: 100,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications_none_outlined,
            grade: 0,
            opticalSize: 48,
            weight: 100,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.favorite_border_outlined,
            grade: 0,
            opticalSize: 48,
            weight: 100,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            grade: 0,
            opticalSize: 48,
            weight: 100,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: choices.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 14,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return RawChip(
                      backgroundColor: Colors.blueGrey.shade900,
                      showCheckmark: false,
                      selectedColor: Colors.grey,
                      avatar: Image.asset(
                        'assets/images/myntra logo.png',
                      ),
                      labelStyle: TextStyle(fontSize: 18.0),
                      labelPadding: EdgeInsets.only(left: 30.0, right: 36.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      label: Text(
                        choices[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      selected: _value == index,
                      onSelected: (value) {
                        setState(() {
                          _value = value ? index : 0;
                        });
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              createCategoryList(),
              SizedBox(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Weekend Sale Ends In:',
                        style: TextStyle(fontFamily: "Akatab", fontSize: 17.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: SlideCountdownSeparated(
                          separatorType: SeparatorType.title,
                          durationTitle: DurationTitle(
                              days: 'days',
                              hours: 'h',
                              minutes: 'm',
                              seconds: 's'),
                          separatorStyle: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          showZeroValue: false,
                          onDone: () {},
                          duration: const Duration(days: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              createBigBoxCategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
