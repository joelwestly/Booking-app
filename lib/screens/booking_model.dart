class BookingModel {
  final String doctorName;
  final String department;
  final String time;
  final DateTime date;

  BookingModel({
    required this.doctorName,
    required this.department,
    required this.time,
    required this.date,
  });
}

class BookingHistoryData {
  static List<BookingModel> bookings = [];
}
