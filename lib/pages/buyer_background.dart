import 'package:flutter/material.dart';

class BuyerBackground extends StatefulWidget {
  const BuyerBackground({Key? key}) : super(key: key);

  @override
  State<BuyerBackground> createState() => _BuyerBackgroundState();
}

class _BuyerBackgroundState extends State<BuyerBackground> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Costa Coffee",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit velit maecenas at proin sed tincidunt. Enim, eget venenatis sed consectetur tristique massa felis, nisi. Felis tellus suspendisse quis vulputate augue vulputate urna cursus. Enim, nulla gravida vestibulum venenatis lacus.",
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  children: [
                    _bulletPoint("elit massaÆ Adipiscing nullam et fusce duis velit sollicitudin arcu mattis amet vitaeÅ"),
                    _bulletPoint("Blandit velit maecenas at proin sed tincidunt."),
                    _bulletPoint("Enim, eget venenatis sed consectetur tristique massa felis, nisi."),
                    _bulletPoint("elit massaÆ Adipiscing nullam et fusce duis velit sollicitudin arcu mattis amet vitaeÅ"),
                    _bulletPoint("Blandit velit maecenas at proin sed tincidunt."),
                    _bulletPoint("Morbi tempus fringilla odio quis inÆ Diam et tincidunt amet sed vulputate metusÆ"),
                  ],
                ),
              ),
              Divider(),
              Text("Achievements",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              RichText(
                text: TextSpan(
                  children: [
                    _bulletPoint("elit massaÆ Adipiscing nullam et fusce duis velit sollicitudin arcu mattis amet vitaeÅ"),
                    _bulletPoint("Blandit velit maecenas at proin sed tincidunt."),
                    _bulletPoint("Enim, eget venenatis sed consectetur tristique massa felis, nisi."),
                    _bulletPoint("elit massaÆ Adipiscing nullam et fusce duis velit sollicitudin arcu mattis amet vitaeÅ"),
                    _bulletPoint("Blandit velit maecenas at proin sed tincidunt."),
                    _bulletPoint("Morbi tempus fringilla odio quis inÆ Diam et tincidunt amet sed vulputate metusÆ"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


WidgetSpan _bulletPoint(String text) {
  return WidgetSpan(
    child: Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 10,
            child: Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              softWrap: true,
            ),
          ),
        ],
      ),
    ),
  );
}

