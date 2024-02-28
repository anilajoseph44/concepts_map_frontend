import 'package:concepts_map/pages/buyer_background.dart';
import 'package:concepts_map/pages/buyer_downloads.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}

class BackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Background Page'),
      ),
    );
  }
}

class BuyerProfile extends StatefulWidget {
  const BuyerProfile({Key? key}) : super(key: key);

  @override
  State<BuyerProfile> createState() => _BuyerProfileState();
}

class _BuyerProfileState extends State<BuyerProfile> {
  String selectedUser = 'Costa Coffee';
  List<String> userOptions = ['Costa Coffee', 'Profile', 'Privacy'];
  int currentIndex = 0;

  final List<Widget> pages = [
    BuyerBackground(),
    BuyerDownloads(),
    BuyerDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Image.asset(
            "assets/concepts_map.png",
            height: 20,
          ),
          SizedBox(width: 80),
          Icon(Icons.notifications_outlined, size: 20),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 13,
            child: Image.network(
              "https://www.shareicon.net/data/128x128/2016/08/05/806962_user_512x512.png",
              height: 25,
            ),
          ),
          DropdownButton<String>(
            value: selectedUser,
            onChanged: (String? newValue) {
              setState(() {
                if (newValue == 'Profile') {
                  // Handle navigation to profile page
                }
                else if(newValue == 'Costa Coffee') {
                    Navigator.pop(context);
                  }

                else {
                  selectedUser = newValue!;
                }
              }
              );
            },
            items: userOptions
                .map((String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ))
                .toList(),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 290,
            width: 350,
            child: Stack(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        "https://blog.tipranks.com/wp-content/uploads/2022/08/shutterstock_201637796-750x406.jpg",
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Costa Coffee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Best Coffee provider",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "London, United Kingdom",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 10,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://1000logos.net/wp-content/uploads/2020/10/Costa-Coffee-Logo-640x400.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 15,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  ),
                  foregroundColor: Colors.black,
                ).copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.orange; // Change background color when pressed
                      }
                      else
                        {
                          return Colors.white;
                        }
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {

                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.orange
                    );
                    currentIndex=0;
                  }
                  );
                },
                child: Text("Background"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                    foregroundColor: Colors.black
                ).copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.orange; // Change background color when pressed
                      }
                      else
                      {
                        return Colors.white;
                      }
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex=2;
                  });
                },
                child: Text("Activities"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                    ),
                    foregroundColor: Colors.black
                ).copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.orange; // Change background color when pressed
                      }
                      else
                      {
                        return Colors.white;
                      }
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    currentIndex=1;
                  });
                },
                child: Text("Downloads"),
              ),

            ],
          ),
          Expanded(
            child: pages[currentIndex],
          ),
        ],
      ),
    );
  }
}