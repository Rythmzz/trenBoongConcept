import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tren_boong_concept/features/home/widgets/main_card.dart';

import '../../domain/bloc/main_card/main_card_bloc.dart';
import '../../domain/bloc/main_card/main_card_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: context.read<MainCardBloc>(),
        child: BlocBuilder<MainCardBloc, MainCardState>(
            builder: (BuildContext context, MainCardState state) {
          if (state is CardLoadSuccessState) {
            return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(99, 153, 137, 106).withOpacity(1),
                        BlendMode.color),
                    image: AssetImage("assets/image/main-background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.center,
                child: Center(child: MainCard(urlImage: state.card.urlImage)));
          }

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Color.fromARGB(99, 153, 137, 106).withOpacity(1),
                    BlendMode.color),
                image: AssetImage("assets/image/main-background.png"),
                fit: BoxFit.cover,
              ),
            ),
          );
        }));
  }
}
