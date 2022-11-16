import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/bloc/main_card/main_card_bloc.dart';
import '../../domain/bloc/main_card/main_card_event.dart';
import '../../domain/bloc/main_card/main_card_state.dart';
import '../../infrastructure/repository/card_repository.dart';
import '../widgets/utility_bar.dart';
import 'home_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentPageIndex = 0;

  void _changePage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CardRepository(),
      child: BlocProvider<MainCardBloc>(
          create: (context) =>
              MainCardBloc(cardRepository: context.read<CardRepository>())
                ..add(GetCardEvent()),
          child: Scaffold(
              key: _scaffoldKey,
              bottomNavigationBar: UtilityBar(scaffoldKey: _scaffoldKey),
              body: HomeScreen())),
    );
  }
}
