import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_flutter/core/app_style.dart';
import 'package:portfolio_flutter/core/imagePaths.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {'title': 'India Property Dekho', 'image':ImagePath.getImagePath('ipd_images', 0)},
    {'title': 'India Property Dekho - CRM', 'image': ImagePath.getImagePath('crm', 0)},
    {'title': 'India Property Dekho - Sales', 'image': ImagePath.getImagePath('ipd-sales', 0)},
    {'title': 'FindiPay', 'image': ImagePath.getImagePath('findipay', 2)},
    {'title': 'Sales Onboarding App', 'image': ImagePath.getImagePath('findipay', 2)},
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Portfolio',style: AppStyle.h1,)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('WAQUAR AHMED KHAN'),
              accountEmail: Text('waquarahmedkhan5@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person), // Add your profile image
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {
                // Navigate to About Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Experience'),
              onTap: () {
                // Navigate to Experience Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Projects'),
              onTap: () {
                // Navigate to Projects Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                // Navigate to Contact Screen
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'My Work',
              style: AppStyle.h1,
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:isMobile? 2:3, // Displays images in 2 columns
                  childAspectRatio:isMobile?0.4: 0.6, // Adjusts item size ratio
                  crossAxisSpacing: 6.w,
                  mainAxisSpacing: 4.h,
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.w),
                        ),
                        elevation: 5,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(4.w),
                              ),
                              child: Image.asset(
                                projects[index]['image']!,
                                height:isMobile?600.h: 800.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          projects[index]['title']!,
                          textAlign: TextAlign.center,
                          style: AppStyle.h2,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
