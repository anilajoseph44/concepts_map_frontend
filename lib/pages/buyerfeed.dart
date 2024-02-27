import 'package:concepts_map/pages/Automotive.dart';
import 'package:concepts_map/pages/BusinessSupport.dart';
import 'package:flutter/material.dart';

class BuyerFeed extends StatefulWidget {
  const BuyerFeed({Key? key}) : super(key: key);

  @override
  State<BuyerFeed> createState() => _BuyerFeedState();
}

class _BuyerFeedState extends State<BuyerFeed> {
  String selectedCategory = 'Automotive'; // Corrected spelling
  List<String> categories = [
    'Automotive',
    'Business support & supplies',
    'Computer and Electronics',
    'Construction and contract',
    'Education',
    'Entertainment'
  ];
  final List<Widget> pages = [
    AutoMotive(),
    BusinessSupport(),
    AutoMotive(),
    BusinessSupport(),
    AutoMotive(),
    BusinessSupport()
    //creating a list to load pages according to index
    // Add more pages for other categories here
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset(
              "assets/concepts_map.png",
              height: 20,
            ),
            SizedBox(width: 110),
            Icon(Icons.notifications_outlined, size: 20),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 13,
              child: Image.network(
                "https://www.shareicon.net/data/128x128/2016/08/05/806962_user_512x512.png",
                height: 25,
              ),
            ),
            SizedBox(width: 10),
            Text("John Doe"),
            Icon(Icons.expand_more),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: selectedCategory,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                        currentIndex = categories.indexOf(selectedCategory);
                      });
                    },
                    items: categories
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: pages[currentIndex],
            ),
          ],
        ),
      ),
    );
  }
}
