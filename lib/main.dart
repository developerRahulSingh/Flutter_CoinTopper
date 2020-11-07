import 'package:cointopper/bloc/dashboardBloc/dashboard_bloc.dart';
import 'package:cointopper/bloc/dashboardBloc/dashboard_event.dart';
import 'package:cointopper/bloc/topViewCoinListBloc/topViewedCoinList_bloc.dart';
import 'package:cointopper/repositories/repo.dart';
import 'package:cointopper/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/topViewCoinListBloc/topViewedCoinList_event.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<DashboardBloc>(
        create: (context) {
          return DashboardBloc(
            coinTopperRepository: CoinTopperRepository(),
          )..add(LoadGlobalDataCoin());
        },
      ),
//      BlocProvider<TopViewedCoinListBloc>(
//        create: (BuildContext context) => TopViewedCoinListBloc(
//          coinRepository: CoinTopperRepository(),
//        )..add(LoadTopViewedCoinList()),
//      ),
    ],
    child: MyApp(),
  ));
//  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
