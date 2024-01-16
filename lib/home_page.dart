import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttom_navigator.dart';
import 'dart:io';

class Item{
  final String imagePath;
  final double price;

  Item({required this.imagePath , required this.price});
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(imagePath: 'myfile/grey.png', price: 500.9),
      Item(imagePath:'myfile/jordaneleven.png',  price: 500.98),
      Item(imagePath: 'myfile/jordanfive.png', price: 600.90),
      Item(imagePath:'myfile/jordanfour.png',  price: 300.99),
      Item(imagePath: 'myfile/jordanoneorig.png',  price: 1000.99),
      Item(imagePath:  'myfile/jordanoneretro.png', price: 499.9),
      Item(imagePath:'myfile/jordantwelve.png',  price: 650.9),
      Item(imagePath:'myfile/retrothree.png',  price: 700.89),
      Item(imagePath: 'myfile/sixnoir.png', price: 499.99),
      Item(imagePath: 'myfile/travis.png',  price: 599.9),

    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 , ),
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white70.withOpacity(0.3),
                          width: 2.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.square_grid_2x2,
                            size: 25.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white70.withOpacity(0.3),
                          width: 2.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.shopping_cart,
                            size: 25.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                //this is the section for the search field and the addition of stuffs section
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      placeholder: 'Search',
                      suffix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.search,
                          size: 25.0,
                          color: Colors.grey,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                    child: Icon(
                      Icons.list,
                      size: 25.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.purple.withOpacity(0.75),
                      Colors.blue.withOpacity(0.5),
                      Colors.lightBlue.withOpacity(0.2),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes the shadow position
                    ),
                  ],
                ),
                child: Row(
                  children: [

                       Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: Container(

                          height: 120,
                          width:  150,

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          padding: EdgeInsets.all(10.0),
                           child: RichText(
                             text: TextSpan(
                               text: 'Get the special discount',
                               style: TextStyle(
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.normal,
                               ),
                               children: [
                                 WidgetSpan(
                                   child: Center(
                                     child: Text(
                                       '\n50% OFF'
                                           ,
                                       style: TextStyle(
                                         fontSize: 20.0,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.white,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),

                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset(
                          'assets/download.jpeg',
                          width: 150.0,
                          height: 120.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //now to design the scrollable on the row
            // SizedBox(height: 30,),
            //
             Expanded(
                 child: TabBarContent(),
             ),
            //
            //
            //
            //
            // //creating the grid view to host the sneakers
            // SizedBox(height: 10,),

               Expanded(


                   child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 10, // Spacing between each column
                      mainAxisSpacing: 10, // Spacing between each row
                    ),
                    itemCount: items.length,
                    // Total number of items in the grid
                    itemBuilder: (BuildContext context, int index) {




                      // Construct the image path using the directory and image name

                      Item item = items[index];

                      return ClipRRect(
                        borderRadius: BorderRadius.circular(5),

                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.3),
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                item.imagePath,
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8),
                              Text(
                                ' \$${item.price}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                   ),
                 ),

          ],

        ),

      ),
      bottomNavigationBar: MyBottomNavigationBar(),

    );

  }
}

class TabBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.square_grid_2x2,
                      size: 25.0,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'All',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.orange,

                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(

                      Icons.shopping_bag,
                      size: 24,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'shopping bag',
                      style: TextStyle(
                        fontSize: 14.0,

                      ),
                    ),
                  ],
                ),
              ),


              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.watch,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'watch',
                      style: TextStyle(
                        fontSize: 14.0,

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('All')),
                Center(child: Text('Shopping bag')),
                Center(child: Text('Watch')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
