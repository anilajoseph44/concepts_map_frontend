import 'package:flutter/material.dart';

class BusinessSupport extends StatefulWidget {
  const BusinessSupport({Key? key}) : super(key: key);

  @override
  State<BusinessSupport> createState() => _MostRatedState();
}

class _MostRatedState extends State<BusinessSupport> {
  List<Map<String, dynamic>> data = [
    {
      "title": "Action Concepts with cold beverages shot",
      "username": "UCMP02389",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit."
    },
    {
      "title": "Redbull concept for Fifa worldcup",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "30 interests",
      "rating": "4.1",
      "view": "20K",
      "amount": "20"
    },
    {
      "title": "Fifa 2022 special concept for cold beverages",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "10 interests",
      "rating": "3.5",
      "view": "10K",
      "amount": "15"
    },
    {
      "title": "Fifa 2022 special concept for cold beverages",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "30 interests",
      "rating": "4.5",
      "view": "25K",
      "amount": "150"
    },
    {
      "title": "Fifa 2022 special concept for cold beverages",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "30 interests",
      "rating": "4.1",
      "view": "20K",
      "amount": "20"
    },
    {
      "title": "Fifa 2022 special concept for cold beverages",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "30 interests",
      "rating": "4.1",
      "view": "20K",
      "amount": "20"
    },
    {
      "title": "Fifa 2022 special concept for cold beverages",
      "username": "UCMP02384",
      "content":
      "Lorem ipsum sit amet consectetur adipiscing elit.Dolorsenectus ultrices ut consectetur adipiscing. consectetur adipscing elit.",
      "like": "30 interests",
      "rating": "4.1",
      "view": "20K",
      "amount": "20"
    },
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            elevation: 0, // Remove the shadow of the Card
            color: Colors.transparent, // Make the Card transparent
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey.withOpacity(0.13), Colors.orange.withOpacity(0.10)],
                ),
                borderRadius: BorderRadius.zero,
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index]["title"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 8),
                        Text(data[index]["username"]),
                      ],
                    ),
                    subtitle: Text(data[index]["content"]),
                  ),
                  Divider(
                    height: 24,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(width: 8),
                      Text(
                        "30 interests",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.99),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star_border, color: Colors.orange),
                      SizedBox(width: 4),
                      Text("4.1"),
                      SizedBox(width: 4),
                      Text(
                        "(20K)",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.99),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.attach_money, color: Colors.orange),
                      SizedBox(width: 4),
                      Text("20"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.shopping_cart_outlined),
                      Text("Add to Cart"),
                      SizedBox(width: 170,),
                      Icon(Icons.add),
                      Text("Buy")
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}
