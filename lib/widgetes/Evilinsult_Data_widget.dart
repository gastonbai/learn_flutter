import 'package:flutter/cupertino.dart';
import 'package:learn_flutter/domain/lockal_evilinsult_data_source.dart';

class EvilinsultDataWidget extends StatelessWidget {
  EvilinsultResponse evilinsultResponse;

  EvilinsultDataWidget({
    required this.evilinsultResponse,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Номер публикации: ${evilinsultResponse.number}'), //Если нет то так int get number => evilinsultResponse.number; Можно использовать если мы хотим добавить логику
        Text('Язык публикации: ${evilinsultResponse.language}'),
        Text('Публикация: ${evilinsultResponse.insult}'),
        Text('Кем создана: ${evilinsultResponse.createdby}'),
        Text('Комментарий: ${evilinsultResponse.comment}'),
        Text('Просмотров: ${evilinsultResponse.shown}'),
        Text('Активных просмотров: ${evilinsultResponse.active}'),
      ],
    );
  }

}
