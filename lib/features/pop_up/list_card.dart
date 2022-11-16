import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tren_boong_concept/domain/bloc/main_card/main_card_event.dart';
import 'package:tren_boong_concept/domain/bloc/user_cards/user_cards_bloc.dart';
import '../../domain/bloc/main_card/main_card_bloc.dart';
import '../../domain/bloc/user_cards/user_cards_event.dart';
import '../../domain/bloc/user_cards/user_cards_state.dart';
import '../../domain/entity/card_entity.dart';
import '../../infrastructure/repository/card_repository.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => ListCardState();
}

class ListCardState extends State<ListCard> {
  late UserCardsBloc _userCardsBloc;
  @override
  void initState() {
    super.initState();
    _userCardsBloc = UserCardsBloc(
        cardRepository: context.read<CardRepository>(),
        mainCardBloc: context.read<MainCardBloc>())
      ..add(GetCardsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCardsBloc>.value(
        value: _userCardsBloc,
        child: BlocBuilder<UserCardsBloc, UserCardsState>(
          builder: (BuildContext context, UserCardsState state) {
            if (state is CardsLoadSuccessState) {
              return Container(
                  child: Expanded(
                      child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.cards.length,
                itemBuilder: (context, index) {
                  final item = state.cards[index];

                  return _buildCard(item);
                },
              )));
            }

            return Container();
          },
        ));
  }

  Widget _buildCard(CardEntity item) {
    return GestureDetector(
        onTap: () {
          context.read<MainCardBloc>().add(ChangeCardEvent(item));
          Navigator.pop(context);
        },
        child: Container(
            margin: EdgeInsets.only(top: 35),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0)),
            child: Center(
                child: Container(
                    height: 380,
                    width: 228,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item.urlImage),
                        fit: BoxFit.fill,
                      ),
                    )))));
  }
}
