import 'package:flutter/material.dart';
import 'package:flutter_productivity_app_ui/utils/plan_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Welcome back
              Row(
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 7,
              ),

              // Name and notifications.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Arthur Bufon',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const Icon(
                    Icons.notifications_none,
                    size: 28,
                  ),
                ],
              ),

              const SizedBox(
                height: 40,
              ),

              // Tasks progress.
              Container(
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            const Text(
                              "Excellent, today's plan is almost done!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  child: Text(
                                    "View plan",
                                    style: TextStyle(
                                        color: Colors.indigo[900],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: const [
                            Text(
                              "80%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            CircularProgressIndicator(
                              value: 0.8,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // Category.
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  // Category cards.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PlanItem(title: 'Personal Plan', icon: Icons.person),
                      PlanItem(title: 'Work Plan', icon: Icons.work),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // On going plan.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'On going Plan',
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // Category cards.
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: const <Widget>[
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.book_sharp),
                        title: Text(
                            'Creating webflow design and responsive on mobile'),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.run_circle),
                        title: Text(
                            'Workout'),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.smartphone),
                        title: Text(
                            'Study web development'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
