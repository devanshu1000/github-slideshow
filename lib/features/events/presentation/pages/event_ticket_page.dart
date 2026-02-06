import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class EventTicketPage extends StatelessWidget {
  const EventTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Event Ticket'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuCcJ-rH5SK5XOWyAgH-1i7tyUF_UrabX7DinIDdp2sOxyF0UzdkAxV8eatHK1mx6Cdk-gi73b8fkifq2MeaI_oCg70V15mFOX8p6-Q8Km4aakFngrRiEYsGreqJYBbQdLBDVrbUipSXBqL0ee1n5ZXx0ct-YMI3gqUDh8fBz_Gx8plG_sH2KaWGvlB7fJjqYEEiXfcbZmM3MC5YuMGl0lA3YnIG7O786kOGmYbJu7EF1xBuvj3-AFHNR_fKt-s6PXcmW6RvpHfX7DLY'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Text('Elite High Tea Matchmaking', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('Saturday, Oct 24 • 4:00 PM', style: TextStyle(color: AppColors.goldRoyal, fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.qr_code, size: 200),
                      const SizedBox(height: 16),
                      Text('Ticket ID: MAT-8829-X', style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
