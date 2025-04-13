import 'package:flutter/material.dart';
import 'package:bookwell/screens/booking.dart'; // Import Booking Page

class DermatologyDoctor extends StatelessWidget {
  const DermatologyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3AB19B), // Background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Dermatology Doctor",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              _buildDoctorCard(context, "Isabelle Grate", "Dermatology",
                  "assets/images/Doc2.png"),
              _buildDoctorCard(
                  context, "Lily Crux", "Dermatology", "assets/images/Doc2.png"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorCard(
      BuildContext context, String name, String specialty, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    specialty,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Earliest Available Schedule",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const Text("8:00 am to 5:00 pm"),
          const SizedBox(height: 5),
          const Text(
            "Fee: ₱400.00",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            "About",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
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
                  color: Colors.blue, // Blue text
                  decoration: TextDecoration.underline, // Underline
                  decorationColor: Colors.blue, // Blue underline
                  decorationThickness: 2, // Makes underline more visible
                  decorationStyle: TextDecorationStyle.solid, // Normal underline
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
