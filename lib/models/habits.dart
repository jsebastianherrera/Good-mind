class Habit {
  late String tittle;
  late String description;
  Habit({required this.tittle, required this.description});

  Habit.fromJson(Map<String, dynamic> json) {
    tittle = json['tittle'];
    description = json['description'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tittle'] = tittle;
    data['desciption'] = description;
    return data;
  }
}
