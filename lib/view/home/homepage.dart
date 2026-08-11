import 'dart:developer';

import 'package:ecommercace_app_ui/database/localdata/product.dart';
import 'package:ecommercace_app_ui/database/model/product_list.dart';
import 'package:ecommercace_app_ui/view/home/widget/customdrawer.dart';
import 'package:ecommercace_app_ui/view/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

import '../../database/model/p_data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Map<dynamic , dynamic>> Product = [];

  List<PDataModel> Product =[];
  // int reting =3;
  void getData() {
    // Future.delayed(Duration(seconds: 2));
    Product.clear();
    Product.addAll(ProductList().data);
    log("${Product[0].pName}");
    setState(() {

    });
  }

  @override
  void initState() {

    getData();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          height: 70,
          width: 120,
          fit: BoxFit.fill,
          "https://cdn.dribbble.com/userupload/17039932/file/original-983633d1f6de58f5d871f174ff34f057.jpg?format=webp&resize=400x300&vertical=center",
        ),
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person, size: 30, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.black54),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Image.network(
                    width: 200,
                    height: 100,
                    fit: BoxFit.fill,

                    "https://graphicsfamily.com/wp-content/uploads/edd/2021/08/E-Commerce-Logo-Design-PNG.png",
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Product.length,

                itemBuilder: (BuildContext context, index) {
                  final P = Product[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        height: 135,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  opacity: 1.5,
                                  image: NetworkImage("${P.image}"),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ID : ${P.id}",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${P.pName}",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                  Text(
                                    "Type :${P.type}",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${P.rPrice}",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "${P.dPrice}",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.all(2.0),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 5),
                                          Icon(Icons.shopping_cart, size: 20),
                                          SizedBox(width: 10),
                                          Text(
                                            "Buy Now",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ...List.generate(5, (index){
                                          return Icon(
                                            Icons.star,
                                            size: 15,
                                            color:index < P.rating ? Colors.amber : Colors.black ,
                                          );
                                        }),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(onPressed: (){}, child: Text("View",style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.redAccent
                                  ),))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
