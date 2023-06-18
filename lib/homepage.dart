// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, non_constant_identifier_names, avoid_types_as_parameter_names, must_be_immutable

import 'package:basketball/cubit/counter-cubit.dart';
import 'package:basketball/cubit/counter-state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, State) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("points counter"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A ",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      " ${BlocProvider.of<CounterCubit>(context).teamApoints}",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "A", buttonNumber: 1);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "A", buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "A", buttonNumber: 3);
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                  ],
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B ",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "${BlocProvider.of<CounterCubit>(context).teamBpoints} ",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "B", buttonNumber: 1);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "B", buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .TeamIncrement(team: "B", buttonNumber: 3);
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size(150, 50)),
                onPressed: () {},
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ],
        ),
      );
    }, listener: (context, State) {
      if (State is CounterAIncrementState) {
        teamApoints = BlocProvider.of<CounterCubit>(context).teamApoints;
      } else {
        teamBpoints = BlocProvider.of<CounterCubit>(context).teamBpoints;
      }
    });
  }
}
