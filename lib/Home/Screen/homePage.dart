import 'package:basketball_counter/Home/Widgets/customButton.dart';
import 'package:basketball_counter/Home/Widgets/customTeamName.dart';
import 'package:basketball_counter/core/colorManager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.sizeOf(context).width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Basketball Counter",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.w500)),
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (pageWidth / 2) - 20,
                    child: Column(
                      children: [
                        const CustomTeamName(
                          TeamName: 'Team A',
                        ),
                        Text(
                          "$teamA",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 100,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        CustomButton(
                            btnName: "Add 1 Point",
                            onPressed: () {
                              setState(() {
                                teamA++;
                              });
                            }),
                        const SizedBox(height: 35),
                        CustomButton(btnName: "Add 2 Point", onPressed: () {
                          setState(() {
                            teamA +=2;
                          });
                        }),
                        const SizedBox(height: 35),
                        CustomButton(btnName: "Add 3 Point", onPressed: () {
                          setState(() {
                            teamA +=3;
                            print(teamA);
                          });
                        }),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.6),
                    width: 3,
                    height: 360,
                  ),
                  SizedBox(
                    width: (pageWidth / 2) - 20,
                    child: Column(
                      children: [
                        const CustomTeamName(
                          TeamName: 'Team B',
                        ),
                        Text(
                          "$teamB",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 100,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        CustomButton(
                            btnName: "Add 1 Point",
                            onPressed: () {
                              setState(() {
                                teamB++;
                              });
                            }),
                        const SizedBox(height: 35),
                        CustomButton(btnName: "Add 2 Point", onPressed: () {
                          setState(() {
                            teamB +=2;
                          });
                        }),
                        const SizedBox(height: 35),
                        CustomButton(btnName: "Add 3 Point", onPressed: () {
                          setState(() {
                            teamB +=3;
                          });
                        }),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamB = 0;
                    teamA = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  minimumSize: const Size(150, 50),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
