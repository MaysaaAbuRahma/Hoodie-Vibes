import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hoodies/details.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.brown.shade100,

      bottomNavigationBar:BottomNavigationBar(
       iconSize: 40, 
       selectedItemColor: Color.fromARGB(255, 153, 52, 5),
        items: 
      [BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ""),
      ]) ,
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Row(children: [
            Expanded(child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                
                border: InputBorder.none,
                fillColor: Colors.grey[200],
                filled: true
              ),
            ),),
            Padding(
              padding:EdgeInsets.only(left: 20),
              child: Icon(Icons.menu, size: 40,),
            )
          ],
          ),

          Container(height: 30,),
          Text("Categories", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) 
          ,),
          Container(height: 10,),
          Container(
            height:100 ,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration:BoxDecoration(color: Colors.grey[200], borderRadius:BorderRadius.circular(100)),
                        child:Icon(Icons.checkroom,size: 40,) ,padding:EdgeInsets.all(15) 
                        ,),
                        Text("Classic ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                    ],
                  ),
                ),
                SizedBox(width: 15,)
            ,                Column(
                  children: [
                    Container( margin: EdgeInsets.only(right: 10),
                      decoration:BoxDecoration(color: Colors.grey[200], borderRadius:BorderRadius.circular(100)),
                      child:Icon(FontAwesomeIcons.tshirt,size: 40,) ,padding:EdgeInsets.all(15) 
                      ,),
                      Text("Sport ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  ],
                ),
                SizedBox(width: 15,),
                  Column(
                  children: [
                    Container(
                       margin: EdgeInsets.only(right: 10),
                      decoration:BoxDecoration(color: Colors.grey[200], borderRadius:BorderRadius.circular(100)),
                      child:Icon(FontAwesomeIcons.running,size: 40,) ,padding:EdgeInsets.all(15) 
                      ,),
                      Text("Premium ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  ],
                ),
                SizedBox(width: 15,),
            
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                       margin: EdgeInsets.only(right: 10),
                      decoration:BoxDecoration(color: Colors.grey[200], borderRadius:BorderRadius.circular(100)),
                      child:Icon(FontAwesomeIcons.hatCowboy,size: 40,) ,padding:EdgeInsets.all(15) 
                      ,),
                      Text("Patchwork ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                  ],
                ),
                
              ],
            ),
          ),
       Container(height: 10,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Best Selling", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) 
                      ),
                    ),
         GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),
         children: [
          Card(
            
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                color:Colors.grey,
                width: 300, // زيادة عرض الـ Container
        //height: 200, // زيادة ارتفاع الـ Container
                 child: Image.network("https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/refs/heads/main/36122c77-6112-46a5-af82-1fd87f20c0f4.jfif",fit: BoxFit.fill,height: 100,
                 ),
                ),
                Text("Embroidered Hoodie", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                     Container(height: 2,),         
                            Text("It has woven designs",style: TextStyle(fontSize:14, color:Colors.grey.shade800)),
                Container(height: 6,),
                Text("1300\$",style: TextStyle(fontSize:14, color:const Color.fromARGB(255, 153, 52, 5),fontWeight: FontWeight.bold,),)

            ],),
          ),
          Card(
            child: Column(children: [
              Container(
              
                padding: EdgeInsets.all(5),
                color:Colors.grey, 
                width:300, // زيادة عرض الـ Container
        //height: 150, // زيادة ارتفاع الـ Container
                child: Image.network("https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/refs/heads/main/Manfinity%20Dauomo%20Men%20Kangaroo%20Pocket%20Drawstring%20Thermal%20Hoodie.jfif", height: 110,fit: BoxFit.fill,),
                ),
                Text("Side Pocket Hoodie",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Container(height: 2,),
                Text("Contains front pockets",style: TextStyle(fontSize:14, color:Colors.grey.shade800))     ,   
                                Container(height: 6,),
                                 Text("1534\$",style: TextStyle(fontSize:14, color:const Color.fromARGB(255, 153, 52, 5),fontWeight: FontWeight.bold,),)

            ],),
          ),
          InkWell(
  onTap: () {
    // إنشاء كائن من النموذج Item
    Item item = Item(
      imageUrl: "https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/refs/heads/main/74ee0992-0c59-4688-acfe-07ed0f82c1fb.jfif",
      title: "3D Hoodie",
    
      description: "It contains 3D printing",
      price: "4238\$",
    );

    // الانتقال إلى صفحة التفاصيل مع تمرير البيانات
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ItemDetails(data: item),
      ),
    );
  },
  child: Card(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          color: Colors.grey,
          width: 300,
          child: Image.network(
            "https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/refs/heads/main/74ee0992-0c59-4688-acfe-07ed0f82c1fb.jfif",
            height: 110,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          "3D Hoodie",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Container(height: 2),
        Text(
          "It contains 3D printing",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Container(height: 6),
        Text(
          "4238\$",
          style: TextStyle(
            fontSize: 14,
            color: const Color.fromARGB(255, 153, 52, 5),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),
          Card(
            child: Column(children: [
              Container(
              
                padding: EdgeInsets.all(5),
                color:Colors.grey, 
                width:300, // زيادة عرض الـ Container
        //height: 150, // زيادة ارتفاع الـ Container
                child: Image.network("https://raw.githubusercontent.com/MaysaaAbuRahma/Add-images/refs/heads/main/6f0566a2-173e-4910-8f7a-7460d88e502b.jfif", height: 110,fit: BoxFit.fill,),
                ),
                Text("Pullover Hoodie",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Container(height: 2,),
                Text("Zipperless design",style: TextStyle(fontSize:14, color:Colors.grey))     ,   
                                Container(height: 6,),
                                 Text("700\$",style: TextStyle(fontSize:14, color:const Color.fromARGB(255, 153, 52, 5),fontWeight: FontWeight.bold,),)

            ],),
          ),
         ], )
        ],
        ),
      ),
    );
    
  }
  
}
class Item {
  final String imageUrl;
  final String title;
  final String description;
  final String price;

  Item({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
  });
}