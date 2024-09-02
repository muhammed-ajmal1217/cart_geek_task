class BookingModel {
  String? title;
  String? fromDate;
  String? fromTime;
  String? toDate;
  String? toTime;

  BookingModel({
    this.title,
    this.fromDate,
    this.fromTime,
    this.toDate,
    this.toTime,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      title: json['title'],
      fromDate: json['from_date'],
      fromTime: json['from_time'],
      toDate: json['to_date'],
      toTime: json['to_time'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'from_date': fromDate,
      'from_time': fromTime,
      'to_date': toDate,
      'to_time': toTime,
    };
  }
}
