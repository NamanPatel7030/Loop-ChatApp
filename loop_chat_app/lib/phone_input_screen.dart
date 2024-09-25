import 'package:flutter/material.dart';
import 'otp_verification_screen.dart'; // Keeping this import the same

class PhoneInputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String selectedCountry = "India"; // Default country selection

    return Scaffold(
      appBar: AppBar(
        title: Text("Back"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bold and centered heading for phone input
            Text(
              'Enter your phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Subtitle text below the heading
            Text(
              'Please confirm your region and enter your phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            // Country selection dropdown
            DropdownButtonFormField<String>(
              value: selectedCountry,
              decoration: InputDecoration(
                labelText: 'Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Circular border
                ),
              ),
              items: <String>['India', 'United States', 'United Kingdom', 'Australia']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle country selection change
                selectedCountry = newValue!;
              },
            ),
            SizedBox(height: 20),

            // Phone input field with circular border
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30), // Circular border
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),

            // Full-width button with updated style
            SizedBox(
              width: double.infinity, // Full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 500),
                      pageBuilder: (_, __, ___) => VerificationCodeScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var tween = Tween(begin: begin, end: end);
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(position: offsetAnimation, child: child);
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Black button background
                  foregroundColor: Colors.white, // White button text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Circular button
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
