// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scorpion_wallet/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data = [
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$12'},
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$24'},
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$24'},
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$12'},
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$12'},
    {'icon':'assets/images/shopping_card.png','title':'Shopping','subtitle':'Clothes','amount':r'$12'}
  ];
  @override
  Widget build(BuildContext context) {
    return initWidget();
}


initWidget() {
  return Scaffold(
    body: 
      
      Container(
      padding: const EdgeInsets.only(bottom:30, top: 10),
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height,
      height: 205,
      decoration: BoxDecoration(
        color: Color(0xffF5591F),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top :50, bottom: 10),
              child: Column(
                children: [
                  Text(
                    "Total Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                  ),
                  SizedBox(
                    height: 2
                    ),
                  Text(
                    r"$1.430",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10, right: 10, top:90,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Expenses",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Wiew All",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: ((context, index) => ListTile(
                      leading: CircleAvatar(
                      child: Image.asset(data[index]['icon'].toString()),
                    ),
                  title: Text(
                    data[index]['title'].toString(),
                    style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  subtitle: Text(
                    data[index]['subtitle'].toString(),
                    style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  trailing: Text(
                    data[index]['amount'].toString(),
                    style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                  ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => HomeScreen(),
            icon: Icon(
              Icons.home,
              size: 35,
              ),
          ),
          IconButton(
            onPressed: () => loginScreen(),
            icon: Icon(
              Icons.logout,
              size: 35
              ),
          ),
        ],
      ),
    ),
    );
  }
}
