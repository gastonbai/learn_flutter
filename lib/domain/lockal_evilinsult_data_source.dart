class EvilinsultResponse {
  final int number;
  final String language;
  final String insult;
  final String createdby;
  final String comment;
  final int shown;
  final int active;

  EvilinsultResponse({
    required this.shown,
    required this.active,
    required this.number,
    required this.language,
    required this.insult,
    required this.createdby,
    required this.comment,
  });

  factory EvilinsultResponse.fromJson(Map<String, dynamic> json) {
    return EvilinsultResponse(
      shown: (int.tryParse(json['shown'].toString())) ?? 1,
      active: (int.tryParse(json['active'].toString())) ?? 1,
      number: (int.tryParse(json['number'].toString())) ?? 1,
      language: (json['language'] as String?) ?? 'en',
      insult: (json['insult'] as String?) ??
          'Hello, I didnt get any meaning that why you see this inscription here',
      createdby: (json['createdby'] as String?) ?? 'Gaston',
      comment: (json['comment'] as String?) ?? '"nothing received"',
    );
  }
}
