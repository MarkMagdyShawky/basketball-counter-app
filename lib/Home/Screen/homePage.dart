import 'package:basketball_counter/core/colorManager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Basketball Counter"),
        toolbarHeight: 60,
        elevation: 0,
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: (pageWidth / 2) - 20,
                  child: Column(children: [],),
                ),

                Container(
                  width: (pageWidth / 2) - 20,
                  child: Column(children: [],),
                ),

              ],
            ),

            ElevatedButton(onPressed: (){}, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
