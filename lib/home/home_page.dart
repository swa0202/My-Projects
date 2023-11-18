import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/date/date_set.dart';
import 'package:restaurant_app/home/categories_page.dart';
import 'package:restaurant_app/home/category_menu.dart';
import 'package:restaurant_app/home/containersBody/beverages_design.dart';
import 'package:restaurant_app/home/containersBody/dessert_design.dart';
import 'package:restaurant_app/home/containersBody/dish_design.dart';
import 'package:restaurant_app/home/controllers/homePageController.dart';
import '../../const/styling.dart';
import 'containersBody/description.dart';
import 'containersBody/otherWidgetsDesign.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomePageController homePageCtrl = Get.find<HomePageController>();
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection:Axis.horizontal ,
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.keyboard_backspace_sharp,
                      color: Colors.black, size: 26,
                    ),),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Good Afternoon!', style: TextStyle(
                          color: Colors.grey, fontSize: 11,
                        ),),
                        const Text('David Watson', style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,),),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Find your best meal..', style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,),),

                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          width: Dimension.cntMedWidth,
                          height: Dimension.cntMedHeight,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: SizedBox(
                                  width: 400,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search_sharp, size: 20,),
                                        prefixIconColor: Colors.grey,
                                        hintText: 'Type of cuisine,name of restaurant...',
                                        hintStyle: TextStyle(
                                          color: Colors.grey, fontSize: 13,),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),),
                                          borderSide: BorderSide(
                                            color: Colors.green, width: 0.7,),
                                        )
                                    ),),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 60,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),),
                                  ),
                                  child: TextButton(
                                      child: const Text('GO', style: TextStyle(
                                        color: Colors.white, fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),),
                                      onPressed: () {
                                        Get.to(const DateScreen());
                                      }
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [


                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: homePageCtrl.containerNamesList
                                      .length,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return GestureDetector(onTap: () {

                                      setState(() {
                                        homePageCtrl.ind = index;
                                      });

                                    },
                                        child: tabContainer(txt: homePageCtrl
                                            .containerNamesList[index]));
                                  }),
                            ),

                          ],
                        ),
                        if( homePageCtrl.ind == 0)
                          Description(),
                        if(homePageCtrl.ind == 1)
                          OtherWidgetDesign(),
                        if(homePageCtrl.ind == 2)
                          Dish(),
                        if(homePageCtrl.ind == 3)
                          Dessert(),
                        if(homePageCtrl.ind == 4)
                          Beverages()
                      ],),

                  ),
                ],),
              //          SliverToBoxAdapter(
              //    child: Categories(
              //    onChanged: (value) {},
              //     selectedIndex: 0,
              //    ),
              // ),
              //
              //
              // SliverList(
              //
              //   delegate: SliverChildBuilderDelegate(
              //         (context, categoryIndex) {
              //       List<Menu> items = demoCategoryMenus[categoryIndex].items;
              //       return MenuCategoryItem(
              //         title: demoCategoryMenus[categoryIndex].category,
              //         items: List.generate(items.length,
              //               (index) =>
              //               MenuCard(
              //                 title: items[index].title,
              //                 image: items[index].image,
              //                 price: items[index].price,
              //               ),
              //         ),
              //       );
              //     },
              //     childCount: demoCategoryMenus.length,
              //   ),
              // )

            ),
      ),

      bottomNavigationBar: NavigationBar(
      onDestinationSelected: (int index){
        setState(() {
          currentPageIndex = index;

        });
    },
        animationDuration: Duration(milliseconds: 1000),
         selectedIndex: currentPageIndex,
        height: 65,
        backgroundColor: Colors.green,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Colors.white,size: 37,),
            label: "Home",
          ),
           NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.white,size: 37,),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_3_outlined, color: Colors.white,size: 37,),
            label: 'Profile',),
        ],

      ),

    );
  }


  Padding tabContainer({String? txt}){
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 20,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Text('$txt', style: const TextStyle(
            color: Colors.green, fontSize: 10,
            fontWeight: FontWeight.bold,),
          ),
        ),
  ),
    );

  }
}



