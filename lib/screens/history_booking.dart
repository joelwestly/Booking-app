import 'package:flutter/material.dart';
import 'booking_model.dart';

class HistoryBooking extends StatelessWidget {
  const HistoryBooking({super.key});

  @override
  Widget build(BuildContext context) {
    final bookings = BookingHistoryData.bookings.reversed.toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Booking History',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: bookings.isEmpty
          ? const Center(child: Text("No bookings yet"))
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: bookings.length,
              itemBuilder: (context, index) {
                final booking = bookings[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3AB19B).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(booking.doctorName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(booking.department, style: const TextStyle(fontSize: 14)),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Time: ${booking.time}", style: const TextStyle(fontSize: 14)),
                          Text(
                            "Date: ${booking.date.day.toString().padLeft(2, '0')}/"
                            "${booking.date.month.toString().padLeft(2, '0')}/"
                            "${booking.date.year}",
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
