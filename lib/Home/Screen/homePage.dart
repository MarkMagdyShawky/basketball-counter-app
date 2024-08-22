import 'package:basketball_counter/Home/Widgets/customButton.dart';
import 'package:basketball_counter/Home/Widgets/customTeamName.dart';
import 'package:basketball_counter/core/colorManager.dart';
import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.sizeOf(context).width;
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
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
                                "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 100,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              CustomButton(
                                  btnName: "Add 1 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'A', point: 1);
                                  }),
                              const SizedBox(height: 35),
                              CustomButton(
                                  btnName: "Add 2 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'A', point: 2);
                                  }),
                              const SizedBox(height: 35),
                              CustomButton(
                                  btnName: "Add 3 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'A', point: 3);
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
                                "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 100,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              CustomButton(
                                  btnName: "Add 1 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'B', point: 1);
                                  }),
                              const SizedBox(height: 35),
                              CustomButton(
                                  btnName: "Add 2 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'B', point: 2);
                                  }),
                              const SizedBox(height: 35),
                              CustomButton(
                                  btnName: "Add 3 Point",
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .incrementPoints(team: 'B', point: 3);
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamBPoints = 0;
                        BlocProvider.of<CounterCubit>(context).teamAPoints = 0;
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
        },
        listener: (context, state) {});
  }
}
