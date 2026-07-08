

import 'package:ecommercace_app_ui/drawer/customdrawer.dart';
import 'package:ecommercace_app_ui/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Product = [
    {
      "id": 1001,
      "image": "https://m.media-amazon.com/images/I/61AvlZLg1VL.jpg",
      "name": "Mouse",
      "type": "Wireless",
      "regular_price": "800৳",
      "discount_price": "650৳"
    },
    {
      "id": 1002,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsuHAJCW-qz5sZZQS8fORe9zNEXzjZm9WTJerrJwOx1A&s=10",
      "name": "RGB Gaming Headset",
      "type": "Wired",
      "regular_price": "3000৳",
      "discount_price": "2500৳"
    },
    {
      "id": 1003,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRRRGjcLjOQpX4gNdL0YsY0yEOPhPaCSmb4Yh8gEn9ZRWrBf1HdHUFaMA&s=10",
      "name": "24-Inch Full HD Monitor",
      "type": "Wired",
      "regular_price": "13800৳",
      "discount_price": "11500৳"
    },
    {
      "id": 1004,
      "image": "https://dlcdnwebimgs.asus.com/gain/818d26a5-2d8b-49e3-8381-86fb5945d8cd/w800",
      "name": "4K Ultra HD Webcam",
      "type": "Wired",
      "regular_price": "3500৳",
      "discount_price": "3200৳"
    },
    {
      "id": 1005,
      "image": "https://www.infinitybd.com/image/cache/catalog/speaker/Mini-Bluetooth-Speaker-500x500.jpg",
      "name": "Bluetooth Soundbar Speaker",
      "type": "Wireless",
      "regular_price": "3800৳",
      "discount_price": "2999৳"
    },
    {
      "id": 1006,
      "image": "https://m.media-amazon.com/images/I/614MvRj9b8L._AC_UF894,1000_QL80_.jpg",
      "name": "Ergonomic Gaming Chair",
      "type": "Hardware",
      "regular_price": "18000৳",
      "discount_price": "15500৳"
    },
    {
      "id": 1007,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzQTo-aMLvXcYTgy7RZa0x0JhKlGGB5ehF-qh--05zzA&s",
      "name": "1TB External Solid State Drive",
      "type": "Wired",
      "regular_price": "9500৳",
      "discount_price": "8200৳"
    },
    {
      "id": 1008,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXDL8VEsjHmPD8NeACGDlvjgXU6V5rI0gF7UjPiEyYVg&s=10",
      "name": "Dual-Band Wi-Fi 6 Router",
      "type": "Wireless",
      "regular_price": "4500৳",
      "discount_price": "3850৳"
    },
    {
      "id": 1009,
      "image": "https://mcsolution.com.bd/wp-content/uploads/2025/12/TP-Link-UH7020C-7-in-1-USB-Type-C-Hub-Multiport-USB-C-Adapter-Dongle-Docking-Station-PRICE-IN-BANGLADESH-MC-SOLUTION-BD.webp",
      "name": "USB-C Multiport Hub Dongle",
      "type": "Wired",
      "regular_price": "1800৳",
      "discount_price": "1450৳"
    },
    {
      "id": 1010,
      "image": "https://i5.walmartimages.com/seo/UGEE-S640-Graphic-Drawing-Tablets-Digital-Pen-Tablet-with-Stylus-for-Linux-Mac-Windows-PC-and-Android-OSU-6-3x-4-inches_4a7ef30f-3d16-474d-ba09-1193db8cfab3.43bfac43e9adb330d98ec74d9ff07d44.jpeg",
      "name": "Graphic Drawing Tablet",
      "type": "Wired",
      "regular_price": "6000৳",
      "discount_price": "5200৳"
    },
    {
      "id": 1011,
      "image": "https://kzbangladesh.com/wp-content/uploads/2025/12/%E8%93%9D%E8%89%B2-2.jpg",
      "name": "Noise Cancelling Earbuds",
      "type": "Wireless",
      "regular_price": "2200৳",
      "discount_price": "1750৳"
    },
    {
      "id": 1012,
      "image": "https://vibegaming.com.bd/wp-content/uploads/2023/03/Bose-QuietComfort-Noise-Cancelling-Earbuds-2.jpg.webp",
      "name": "Mechanical Gaming Keyboard",
      "type": "Wired",
      "regular_price": "3200৳",
      "discount_price": "2600৳"
    },
    {
      "id": 1013,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyL1cgB0mCK_pfSrvxiCHvTg4AhYn_aX5F2sjH-0L_5A&s=10",
      "name": "RGB XL Gaming Mouse Pad",
      "type": "Wired",
      "regular_price": "1200৳",
      "discount_price": "950৳"
    },
    {
      "id": 1014,
      "image": "https://img.drz.lazcdn.com/static/bd/p/2acfc41813c7d899b109c0bdf13fcdd1.jpg_720x720q80.jpg",
      "name": "Laptop Cooling Pad Stand",
      "type": "Wired",
      "regular_price": "1500৳",
      "discount_price": "1199৳"
    },
    {
      "id": 1015,
      "image": "https://www.hoco.com.bd/wp-content/uploads/2026/02/Hoco-DH27-Notebook-Cooling-Metal-Stand.webp",
      "name": "Portable Projector",
      "type": "Wireless",
      "regular_price": "12000৳",
      "discount_price": "9999৳"
    },
    {
      "id": 1016,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8qzchZTWxjQjYLhsogJL4r4gdZObXYHExS2b7TiI72A&s",
      "name": "Power Supply (UPS)",
      "type": "Wired",
      "regular_price": "4800৳",
      "discount_price": "4200৳"
    },
    {
      "id": 1017,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6OrTldj3zgEvACE1pP4_CnhcY8ZUQ_1LzUJ-pRBaUoi2ULBaK86-i18X&s=10",
      "name": "Vertical Ergonomic Mouse",
      "type": "Wireless",
      "regular_price": "1950৳",
      "discount_price": "1600৳"
    },
    {
      "id": 1018,
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4soyHchB_5k9NKT2INsCXYijJBHc8lX_6JNMf9Fpy_w&s",
      "name": "Streaming Microphone",
      "type": "Wired",
      "regular_price": "3500৳",
      "discount_price": "2850৳"
    },

  ];

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
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
                  Map P = Product[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        height: 130,
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
                                  image: NetworkImage(
                                      "${P["image"]}"
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${P["name"]}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Type :${P["type"]}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${P["regular_price"]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "${P["discount_price"]}",
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
                                    padding: const EdgeInsets.all(2.0),
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
                                SizedBox(height: 5),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 50),
                                    Text(
                                      "ID : ${P["id"]}",
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
