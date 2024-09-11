import 'package:flutter/material.dart';
import 'package:rider_app/screens/Profile/pofile_help.dart';
import 'package:rider_app/screens/Profile/profile_aboutus.dart';
import 'package:rider_app/screens/Profile/profile_account.dart';
import 'package:rider_app/screens/Profile/profile_feedback.dart';
import 'package:rider_app/screens/Profile/profile_safety.dart';
import 'package:rider_app/screens/Profile/profile_security.dart';
import 'package:rider_app/screens/Profile/profile_termsconditions.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String _name = 'Shubham More';
  String _username = '@shubham';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: _name,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              TextFormField(
                initialValue: _username,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Save profile data
                    Navigator.pop(context);
                  }
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Main content
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0), // Adjust this value as needed
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                // Profile Section
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[400],
                        child: Icon(Icons.person, size: 80, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shubham More',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '@shubham',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EditProfilePage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow[600],
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                            ),
                            child: Text('Edit Profile'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),

                // Wallet Section
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Wallet',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Balance',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                '₹ 500.00',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[600],
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        child: Text('ADD'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),

                // App Settings Section
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      _buildSettingItem(context, Icons.help_outline, 'Help'),
                      _buildSettingItem(context, Icons.security, 'Security & privacy'),
                      _buildSettingItem(context, Icons.account_circle_outlined, 'Account'),
                      _buildSettingItem(context, Icons.description_outlined, 'Term & conditions'),
                      _buildSettingItem(context, Icons.shield_outlined, 'Safety'),
                      _buildSettingItem(context, Icons.feedback_outlined, 'Feedback'),
                      _buildSettingItem(context, Icons.info_outline, 'About us'),
                      _buildSettingItem(context, Icons.logout, 'Log out'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
              onTap: (index) {
                // Handle bottom nav bar item taps
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        switch (title) {
          case 'Help':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpPage()),
            );
            break;
          case 'Security & privacy':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecurityPrivacyPage()),
            );
            break;
          case 'Account':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
            break;
          case 'Term & conditions':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TermsConditionsPage()),
            );
            break;
          case 'Safety':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SafetyScreen()),
            );
            break;
          case 'Feedback':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackPage()),
            );
            break;
          case 'About us':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUsPage()),
            );
            break;
          case 'Log out':
            // Handle log out logic here
            break;
        }
      },
    );
  }
}
