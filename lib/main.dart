import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/injection_container.dart' as di;
import 'core/utils/injection_container.dart';
import 'data/repositories/auth_repository.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/onboarding/presentation/pages/onboarding_page.dart';
import 'features/discovery/presentation/pages/home_page.dart';
import 'features/discovery/presentation/pages/profile_page.dart';
import 'features/events/presentation/pages/events_page.dart';
import 'features/events/presentation/pages/event_ticket_page.dart';
import 'features/messages/presentation/pages/messages_page.dart';
import 'features/messages/presentation/pages/chat_page.dart';
import 'features/profile/presentation/pages/settings_page.dart';
import 'features/profile/presentation/pages/premium_plans_page.dart';
import 'features/admin/presentation/pages/admin_dashboard.dart';
import 'features/admin/presentation/pages/admin_user_crud_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const REMarriageeApp());
}

class REMarriageeApp extends StatelessWidget {
  const REMarriageeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RE Marriagee',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const OnboardingPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/events': (context) => const EventsPage(),
        '/event_ticket': (context) => const EventTicketPage(),
        '/messages': (context) => const MessagesPage(),
        '/chat': (context) => const ChatPage(),
        '/settings': (context) => const SettingsPage(),
        '/premium': (context) => const PremiumPlansPage(),
        '/admin': (context) => const AdminDashboard(),
        '/admin_users': (context) => const AdminUserCrudPage(),
        '/admin_photo_mod': (context) => const PlaceholderPage(title: 'Photo Moderation'),
        '/admin_events': (context) => const PlaceholderPage(title: 'Event Management'),
        '/admin_revenue': (context) => const PlaceholderPage(title: 'Revenue Analytics'),
        '/admin_audit': (context) => const PlaceholderPage(title: 'Audit Logs'),
        '/admin_permissions': (context) => const PlaceholderPage(title: 'Permissions'),
        '/verification': (context) => const PlaceholderPage(title: 'Verification Center'),
        '/privacy': (context) => const PlaceholderPage(title: 'Privacy Settings'),
        '/notifications': (context) => const PlaceholderPage(title: 'Notifications'),
        '/help': (context) => const PlaceholderPage(title: 'Help Center'),
        '/stories': (context) => const PlaceholderPage(title: 'Success Stories'),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuC5Dk0kwcFmjamTCLQqPcV5mFP8S7tEhe2SATU1aWYQlPCYigzw04ly7tTklsU4QoUwLyyawZRVkcX3mqxQt5qRvd2c3sm0HMoWTFZfMx3jE7Fz9lDKkqI6kJ7WUfMvbZbjr_FZR8-hWfLA7AatMjSTzYtHWjGO7Z_diemeXd_RQt4mR8a9JRCUYlnxNyjcgLMi13th9rOr5bfHG8WkAJz8XvE_PEJdXY7wUseNS198cDhx7rfNVv7_DmNPPQT8UYt3neGAC7DvSEef'),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8)
                ])),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Find a New Beginning',
                    style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold, fontFamily: 'Cinzel'),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A safe and respectful community designed for 30+ divorcees & widows.',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/signup'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF39E079),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Get Started'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: const Text('Already a member? Login',
                        style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  final String title;
  const PlaceholderPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Placeholder for $title')),
    );
  }
}
