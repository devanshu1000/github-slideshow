import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network('https://lh3.googleusercontent.com/aida-public/AB6AXuCf7ZE-gR9eY4yg_yVfeoVRGy0iavp9J87R8SKl-On3e3ceKTuPEOeZGKacxwP_mLLqTCFb3Ts1zbD5g35Csxd1kUHF-ITVsIweKyv3Vs5V30D-PcBHYUnnhDWaiONmiXVWm5BPeTQXHqzXnLKmLcjvHjDH2R2GxhJGIpkP2gZVq1ih1OZkHY7V2ZNbfOtFxXUbsd2I_t8nDQ82LxSuNfZ-NpZAzI09-S3pDDKnjvw-fKoO08JT5Yu9Yx0qQvZtuPHgTX_azUTI-ZlT', fit: BoxFit.cover),
            ),
            leading: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.pop(context)),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ananya, 34', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Lora')),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('Mumbai, Maharashtra', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 24),
                    Text('About Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('"A compassionate soul who believes in second chances..."', style: TextStyle(fontStyle: FontStyle.italic, height: 1.5)),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black12))),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/chat'),
                child: const Text('SEND INTEREST'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
