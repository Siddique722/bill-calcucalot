import 'package:bill_calculator/text_style.dart';
import 'package:flutter/material.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({Key? key}) : super(key: key);

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  late double units=0.0;
  late double rate=0.0;
  late double result =0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Icon(
            Icons.offline_bolt,
            color: Colors.greenAccent,
            size: 40,
          ),
          Center(
            child: Text(
              "Electric Bill",
              style: StylesText.styleheading1,
            ),
          ),
          Center(
            child: Text(
              "Calculator",
              style: StylesText.styleheading1,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              "Units",
              style: StylesText.styleheading2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: TextField(
              onChanged: (value)
              {
                setState(() {
                  units = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.double_arrow,
                  color: Colors.black.withOpacity(
                    0.4,
                  ),
                  size: 20,
                ),
                hintText: "Enter units of bill (KW)",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              "Rate",
              style: StylesText.styleheading2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: TextField(
              onChanged: (value)
              {
                setState(() {
                  rate = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.double_arrow,
                  color: Colors.black.withOpacity(
                    0.4,
                  ),
                  size: 20,
                ),
                hintText: "Enter rate per unit",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: GestureDetector(
              onTap: ()
              {
                setState(() {
                  result = units*rate;
                });
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                    child: Text(
                  "Calculate",
                  style: StylesText.styleheading3,
                )),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.greenAccent, width: 0.6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Bill",
                  style: StylesText.styleheading4,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rs ${result.toStringAsFixed(2)}",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              "Issued in public interest by ministry of flutter with fun affairs.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          )
        ],
      ),
    );
  }
}
