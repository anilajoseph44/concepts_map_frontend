import 'package:flutter/material.dart';


class BuyerHome extends StatefulWidget {
  const BuyerHome({super.key});

  @override
  State<BuyerHome> createState() => _BuyerHomeState();
}

class _BuyerHomeState extends State<BuyerHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset("assets/conceptsmap.png",height: 20,),
            SizedBox(width: 120,),
            Icon(Icons.notifications_outlined,size: 20,),
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 13,
              child: Image.network("https://www.shareicon.net/data/128x128/2016/08/05/806962_user_512x512.png",height: 25,),),
            SizedBox(width: 10,),
            Text("John Doe"),
            Icon(Icons.expand_more)
          ],
        ),
        body: Container(padding: EdgeInsets.all(10),
          child: (
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Home",style: TextStyle(color: Colors.grey.withOpacity(0.99)),),
                  Icon(Icons.navigate_next,color: Colors.grey.withOpacity(0.99),),
                  Text("Categories",style: TextStyle(color: Colors.grey.withOpacity(0.99)),),
                  Icon(Icons.navigate_next,color: Colors.grey.withOpacity(0.99),),
                  Text("Results",style: TextStyle(color: Colors.grey.withOpacity(0.99)),),
                  Icon(Icons.navigate_next,color: Colors.grey.withOpacity(0.99),)
                ],
              ),
              SizedBox(height: 30,),
              Text("Showing Results for chosen categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text(
                    "2340 Results",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 13, // Adjust the height of the vertical line
                    width: 1, // Adjust the width of the vertical line
                    color: Colors.black54, // Color of the vertical line
                    margin: EdgeInsets.symmetric(horizontal: 10), // Adjust the margin as needed
                  ),
                  SizedBox(
                    height: 30,
                    width: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                        onPressed: (){},
                        child: Text("Aroma",style: TextStyle(color: Colors.grey.withOpacity(0.99)),)),
                  )
                ],
              ),

            ],
          )
          ),
        ),
      ),
    );
  }
}
