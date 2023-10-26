import 'package:final_640710507/model/bangkok.dart';
import 'package:flutter/material.dart';

class Bangkok_List extends StatelessWidget {
  final Bangkok bangkok;

  const Bangkok_List({
    super.key,
    required this.bangkok,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Bangkok"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Nakhon Panthom"))),
            Expanded(
                child: ElevatedButton(onPressed: () {}, child: Text("Paris"))),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(
          children: [
            Text(
              "Topic",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Cnountry",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "lastupdate",
              style: TextStyle(fontSize: 14),
            ),
            //condition icon
            Icon(Icons.abc_rounded),

            SizedBox(
              height: 30,
            ),
            Text(
              "condition text",
              style: TextStyle(fontSize: 28),
            ),
            Text(
              "TempC",
              style: TextStyle(fontSize: 28),
            ),
            Text(
              "feellikeC",
              style: TextStyle(fontSize: 28),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "°C",
                  style: TextStyle(fontSize: 28),
                ),
                Text(
                  "°F",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(children: [
                    Icon(Icons.water_drop),
                    Text("Humidity"),
                    Text("00"),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Icon(Icons.air),
                    Text("wind"),
                    Text("windKph"),
                  ]),
                ),
                Container(
                  child: Column(children: [
                    Icon(Icons.light_mode),
                    Text("UV"),
                    Text("uvfromapi"),
                  ]),
                ),
              ],
            )
          ],
        ))
      ],
    );
  }
}
