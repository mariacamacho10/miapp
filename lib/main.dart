import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miapp/bloc/home_bloc.dart';
import 'package:miapp/views/failure_view.dart';
import 'package:miapp/views/initial_view.dart';
import 'package:miapp/views/loading_view.dart';
import 'package:miapp/views/success_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My APP',
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess) {
              return Success();
            } else if (state is HomeLoadInProgress) {
              return Loading();
            } else if (state is HomeLoadFailure) {
              return Failure();
            }
            return Initial();
          },
        ),
      ),
    );
  }
}
