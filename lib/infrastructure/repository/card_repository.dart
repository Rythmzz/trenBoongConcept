import '../../domain/entity/card_entity.dart';

class CardRepository {
  List<CardEntity> fetchCardsByUser(String id) {
    return [
      CardEntity(
          id: '1',
          name: 'Luffy Strawhat 1',
          urlImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaJ1CNiDNe8AZHYJDrlkkPN6LdThRBzUENXs9B1N2JM9BiFWZsNsbsdRUj9VizvchzLz4&usqp=CAU',
          price: 350000),
      CardEntity(
          id: '2',
          name: 'Luffy Strawhat 2',
          urlImage:
              'https://assets.st-note.com/img/1662544326219-6WCv8s0PTA.jpg?width=2000&height=2000&fit=bounds&quality=85',
          price: 350000),
      CardEntity(
          id: '3',
          name: 'Sanji 1',
          urlImage:
              'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-026.png?20221104',
          price: 350000),
      CardEntity(
          id: '4',
          name: 'Ace 1',
          urlImage:
              'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-013.png?20221104',
          price: 350000),
      CardEntity(
          id: '5',
          name: 'White Bear 1',
          urlImage:
              'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-001_p1.png?20221104',
          price: 350000),
      CardEntity(
          id: '6',
          name: 'White Bear 2',
          urlImage:
              'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-001.png?20221104',
          price: 350000)
    ];
  }

  CardEntity fetchRandomCardByUser(String id) {
    return CardEntity(
        id: '1',
        name: 'Luffy Strawhat 1',
        urlImage:
            'https://asia-en.onepiece-cardgame.com/images/cardlist/card/OP02-013.png?20221104',
        price: 350000);
  }
}
