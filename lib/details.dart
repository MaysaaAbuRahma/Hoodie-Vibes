import 'package:flutter/material.dart';

import 'homepage.dart';


class ItemDetails extends StatelessWidget {
  final Item data;

  const ItemDetails({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
       bottomNavigationBar:BottomNavigationBar(
       iconSize: 40, 
       //selectedItemColor: Color.fromARGB(255, 153, 52, 5),
        items: 
      [BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.grey.shade700,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Color.fromARGB(255, 153, 52, 5),),label: "",),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ""),
      ]) ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // صورة المنتج
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // زر الرجوع
                Positioned(
                  top: 40,
                  left: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            // تفاصيل المنتج
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // العنوان
                  Text(
                    data.title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  // السعر
                  Text(
                    data.price,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 153, 52, 5),
                    ),
                  ),
                  SizedBox(height: 20),
                  // الوصف
                  Text(
                    data.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 30),
                  // أزرار الإجراءات
                  Row(
                    children: [
                      // زر الإعجاب
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // إضافة وظيفة الإعجاب هنا
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      // زر إضافة إلى السلة
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            // إضافة وظيفة إضافة إلى السلة هنا
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 153, 52, 5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}