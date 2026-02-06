import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RE MARRIAGEE'),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSpotlight(context),
            _buildDailyMatches(context),
            const SizedBox(height: 100),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Discover'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Matches'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
            if (index == 2) Navigator.pushNamed(context, '/messages');
            if (index == 3) Navigator.pushNamed(context, '/settings');
        },
      ),
    );
  }

  Widget _buildSpotlight(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Member Spotlight', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Cinzel')),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.goldRoyal, width: 2),
                        image: const DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuCHKlSv9cYOTbuIp7liZhTZUMXc13VS5F7SC6EiHbnQlVAVPZ0uziyuYbjE2jy_dADAaiASBUdncl5pHN3bMFKaaGnievxSpv2VXgC1GMpyiIWKphK51D3Ir6QfezI33uJ8JUORelfmOMSW5Hkm5FRtypMT0k-XgfsseHcziKqExOGseRuBk0AsIpfd0MD3GpLmbjJ7XiXIutfYxAWPoKscm6T8aT-Uaykfo9hzeU2OkU-26Gp1I-JebXBDHR9ERxDMPhZKB9IJ5RpO'), fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text('Sarah, 34', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDailyMatches(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Daily Matches', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Cinzel')),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: const DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuCIKCL_sacgMPCEBcSZhAw-5DHOH0EKN_SvbXF9bqr9ObAdQcs8rhgMpQBJuN9Oi33Vh4_vgT0kvc4_Jujup_81iNLP8bzIWvhksMjpVquLi9zeB9A35Afu8JAMkvSQQ-o4-Vwhv5JlMQgw5INT-Y7z7nimhDzck05OO9xk--H_xhPE_xoje7g7Uo8gwzDU89tvZ3dia3dFVSQDrf7q4tsg5F5oSi411rsj7ZvagIMw7vuA5e1mV_yAyY-_-ufI8AxzTjfUV93l9_Mv'), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.transparent, Colors.black87]),
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ananya, 34', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                const Text('Mumbai, Maharashtra', style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(backgroundColor: Colors.white.withOpacity(0.2), child: const Icon(Icons.close, color: Colors.white)),
                    CircleAvatar(backgroundColor: Colors.white, child: const Icon(Icons.favorite, color: Colors.red)),
                    GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/profile'),
                        child: CircleAvatar(backgroundColor: Colors.white.withOpacity(0.2), child: const Icon(Icons.info_outline, color: Colors.white))),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
