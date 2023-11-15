import 'package:flutter/material.dart';
import 'package:projectweb/summer.dart';
import 'package:projectweb/treanding.dart';
import 'package:projectweb/winter.dart';

import 'cart.dart';
class hmepage extends StatefulWidget {
 hmepage({super.key});

  @override
  State<hmepage> createState() => _hmepageState();
}

class _hmepageState extends State<hmepage> {
  

 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      
      child: Scaffold(
          appBar: AppBar(
            title: Text('Your E-Commerce App'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.wb_sunny), text: 'Summer'),
                Tab(icon: Icon(Icons.ac_unit), text: 'Winter'),
                Tab(icon: Icon(Icons.trending_up), text: 'Trending'),
                SizedBox(width: 50,),
                 Tab(icon: Icon(Icons.shopping_cart), text: 'Cart'),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Cart'),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  title: Text('Account'),
                  onTap: () {
                    
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            
            children: [
              SummerScreen(),
              WinterScreen(),
              TrendingScreen(),
              cart(),
            ],
          ),
        ),
    );
    
  }
}