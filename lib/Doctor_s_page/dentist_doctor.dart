import 'package:flutter/material.dart';
import 'package:bookwell/screens/booking.dart'; // Import Booking Page

class DentistDoctor extends StatefulWidget {
  const DentistDoctor({super.key});

  @override
  State<DentistDoctor> createState() => _DentistDoctorState();
}

class _DentistDoctorState extends State<DentistDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3AB19B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3AB19B),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Dentist Doctor",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            _buildDoctorCard(
              name: "Karl Tabudlo",
              specialty: "Dentist",
              schedule: "8:00 am to 5:00 pm",
              fee: "₱400.00",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              imagePath: "assets/images/Doc1.png",
            ),
            const SizedBox(height: 20),
            _buildDoctorCard(
              name: "Albert Yu",
              specialty: "Dentist",
              schedule: "8:00 am to 5:00 pm",
              fee: "₱400.00",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              imagePath: "assets/images/Doc1.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard({
    required String name,
    required String specialty,
    required String schedule,
    required String fee,
    required String description,
    required String imagePath,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    specialty,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Earliest Available Schedule",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(schedule, style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 5),
          Text("Fee: $fee", style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 5),
          const Text(
            "About",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Booking(
                      doctorName: name,  // Pass dynamic doctor name
                      department: specialty,  // Pass dynamic specialty
                    ),
                  ),
                );
              },
              child: const Text(
                "BOOK APPOINTMENT",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
