import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}


class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B3A5C)),
        scaffoldBackgroundColor: const Color(0xFFF6F5F1),
      ),
      home: const StudentProfileHome(),
    );
  }
}


class _ProfileData {
  static const String fullName = 'Juan Miguel D. Dela Cruz';
  static const String nickname = 'Jigs';
  static const String age = '20';
  static const String birthday = 'March 14, 2006';
  static const String address = 'Cabuyao, Laguna, Philippines';
  static const String hobby = 'Playing basketball & building apps';
  static const String motto = '"Code a little, learn a lot."';
  static const String course = 'BS Information Technology';
  static const String yearLevel = '3rd Year';
  static const String section = '3IT-A';

  static const String favoriteSubject = 'Mobile Application Development';
  static const String programmingLanguage = 'Dart / Flutter';
  static const String technicalSkill = 'UI/UX Design & Prototyping';
  static const String careerGoal = 'Mobile Application Developer';

  static const String photoAsset = 'assets/images/profile.jpg';
}

class StudentProfileHome extends StatelessWidget {
  const StudentProfileHome({super.key});

  static const Color _primaryColor = Color(0xFF1B3A5C);
  static const Color _accentColor = Color(0xFFD4A657); 
  static const Color _cardColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _primaryColor,
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [_primaryColor, Color(0xFF2C5480)],
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 56,
                    backgroundColor: _accentColor,
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          _ProfileData.photoAsset,
                          width: 104,
                          height: 104,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    _ProfileData.fullName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '"${_ProfileData.nickname}"',
                    style: TextStyle(
                      color: Color(0xFFE3D7B8),
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school, color: _accentColor, size: 18),
                      SizedBox(width: 6),
                      Text(
                        '${_ProfileData.course} • ${_ProfileData.yearLevel} • ${_ProfileData.section}',
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Row(
                children: [
                  Icon(Icons.badge_outlined, color: _primaryColor),
                  SizedBox(width: 8),
                  Text(
                    'Personal Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                color: _cardColor,
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    children: [
                      _InfoTile(icon: Icons.cake_outlined, label: 'Age', value: _ProfileData.age, color: _primaryColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.calendar_month_outlined, label: 'Birthday', value: _ProfileData.birthday, color: _primaryColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.home_outlined, label: 'Address', value: _ProfileData.address, color: _primaryColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.sports_basketball_outlined, label: 'Hobby', value: _ProfileData.hobby, color: _primaryColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.format_quote_outlined, label: 'Motto', value: _ProfileData.motto, color: _primaryColor),
                    ],
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Row(
                children: [
                  Icon(Icons.menu_book_outlined, color: _primaryColor),
                  SizedBox(width: 8),
                  Text(
                    'Academic Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                color: _cardColor,
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    children: [
                      _InfoTile(icon: Icons.star_outline, label: 'Favorite Subject', value: _ProfileData.favoriteSubject, color: _accentColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.code, label: 'Programming Language', value: _ProfileData.programmingLanguage, color: _accentColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.build_outlined, label: 'Technical Skill', value: _ProfileData.technicalSkill, color: _accentColor),
                      Divider(height: 1, indent: 16, endIndent: 16),
                      _InfoTile(icon: Icons.flag_outlined, label: 'Career Goal', value: _ProfileData.careerGoal, color: _accentColor),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Thanks for visiting my profile!')),
                      );
                    },
                    icon: const Icon(Icons.mail_outline),
                    label: const Text('Contact Me'),
                  ),
                  const SizedBox(width: 12),
                  TextButton.icon(
                    style: TextButton.styleFrom(foregroundColor: _primaryColor),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Add your GitHub link here!')),
                      );
                    },
                    icon: const Icon(Icons.code),
                    label: const Text('View GitHub'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: color.withValues(alpha: 0.12),
        child: Icon(icon, color: color, size: 20),
      ),
      title: Text(
        label,
        style: const TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(fontSize: 15, color: Colors.black87, fontWeight: FontWeight.w600),
      ),
    );
  }
}
