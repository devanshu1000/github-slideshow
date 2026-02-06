import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, '/event_ticket'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuC6eJjYEyiEVRJvAVEDZyZZG0Iz3IpVvZuZXXYT6Zamcqct9tnoYc8pR9ynLwpv1E7_o4gfpiq7teyUKxhHfo61luMnPGiX-f9zkbzpetPojOD9Lefk-QskgHPsvbIWe-n0b-jCkUwtO2RWWWxWJ27GfG2pHrh3bsg0eainAXk-FzKqxGILDh55iuu68esF845svHW7Z7Ez7f2sgBzxQlA83ySvgf4EtmSML7WeNQlj-WYGbn3M-C69--65C1_shwbhOnoje5tnxLrO',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Elite High Tea Matchmaking', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            Icon(Icons.calendar_month, size: 16, color: Colors.grey),
                            SizedBox(width: 4),
                            Text('Saturday, Oct 14 • 4:00 PM', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('\$25.00', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primaryTeal)),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Register Now'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
