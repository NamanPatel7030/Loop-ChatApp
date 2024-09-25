import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bold text for "OTP"
            Text(
              'OTP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24, // Adjust the size as needed
              ),
            ),
            SizedBox(height: 10), // Space between OTP and instruction text
            // Instruction text
            Text(
              'We’ve sent the code via SMS to your phone number.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Code input field with rounded corners
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter 6-digit OTP code',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Button that stretches to the edges
            SizedBox(
              width: double.infinity, // Full width
              child: ElevatedButton(
                onPressed: () {
                  // Handle code verification
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Black button background
                  foregroundColor: Colors.white, // White button text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
