import 'package:flutter/material.dart';

void main() {
  runApp(const SurgicalAuditPresentationApp());
}

class SurgicalAuditPresentationApp extends StatelessWidget {
  const SurgicalAuditPresentationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Surgical Audit Presentation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1), // Medical Blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PresentationScreen(),
      },
    );
  }
}

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<SlideData> _slides = [
    SlideData(
      title: "The Vital Role of Surgical Audit",
      subtitle: "Elevating Patient Safety and Surgical Excellence",
      content: "Welcome. Today we will explore why surgical audits are not just an administrative task, but the heartbeat of modern, safe, and effective surgical care. We will look at what they are, why they matter, and real-world examples of how they save lives.",
      icon: Icons.health_and_safety,
    ),
    SlideData(
      title: "1. What is a Surgical Audit?",
      content: "A surgical audit is a systematic, critical analysis of the quality of surgical care. It involves reviewing surgical procedures, outcomes, and complications against established standards.\n\nCrucially, it is NOT about pointing fingers or finding someone to blame. It is a constructive process aimed at identifying systemic weaknesses and discovering opportunities for continuous improvement.",
      icon: Icons.analytics,
    ),
    SlideData(
      title: "2. Why Do We Need Surgical Audits?",
      content: "• Quality Assurance: Ensuring every patient receives care that meets or exceeds national and international standards.\n• Patient Safety: Proactively identifying risks before they lead to severe complications.\n• Continuous Learning: Medicine is ever-evolving; audits help surgical teams adapt and refine their techniques.\n• Accountability: Building trust with patients and the community by showing a commitment to transparency.",
      icon: Icons.verified_user,
    ),
    SlideData(
      title: "3. The Audit Cycle: A Step-by-Step Process",
      content: "The audit process is a continuous loop, commonly known as the Audit Cycle:\n\n1. Identify the Issue: Pick a topic (e.g., infection rates).\n2. Set Criteria & Standards: Define what 'good' looks like.\n3. Collect Data: Gather real-world results from recent surgeries.\n4. Analyze & Compare: See where the reality falls short of the standard.\n5. Implement Change: Introduce new protocols or training.\n6. Re-audit: Measure again to ensure the change actually worked.",
      icon: Icons.loop,
    ),
    SlideData(
      title: "4. Benefits for Patients",
      content: "At the end of the day, the patient is at the center of the audit process.\n\n• Reduced Complications: Lower rates of infections, readmissions, and unexpected side effects.\n• Better Outcomes: Faster recovery times and more successful procedures.\n• Enhanced Trust: Patients feel safer knowing their hospital actively reviews and improves its own performance.",
      icon: Icons.favorite,
    ),
    SlideData(
      title: "5. Benefits for Surgeons & Hospitals",
      content: "• Professional Development: Surgeons get objective feedback on their performance, helping them master their craft.\n• Resource Optimization: Identifying inefficiencies (like wasted surgical supplies or operating room downtime) saves money.\n• Risk Management: Reducing medical errors naturally decreases the risk of malpractice and legal liabilities for the institution.",
      icon: Icons.local_hospital,
    ),
    SlideData(
      title: "6. Example 1: Reducing Post-Operative Infections",
      content: "Scenario: A hospital noticed a slight spike in Surgical Site Infections (SSIs) after abdominal surgeries.\n\nThe Audit: The team reviewed 100 recent cases and compared them to the standard of administering prophylactic antibiotics within 60 minutes before the first incision.\n\nThe Finding: Antibiotics were often given 2 hours early or right after the incision.\n\nThe Fix: A mandatory pre-incision checklist was instituted.\n\nThe Result: A follow-up audit showed a 40% drop in SSIs. Patients recovered faster, and the hospital saved thousands in prolonged care costs.",
      icon: Icons.coronavirus,
    ),
    SlideData(
      title: "7. Example 2: Improving Emergency Turnaround",
      content: "Scenario: Delays were occurring in getting acute appendicitis patients from the ER to the operating room.\n\nThe Audit: Time-stamped data from admission to incision was collected and analyzed.\n\nThe Finding: The major bottleneck was waiting for CT scan reads, not surgical availability.\n\nThe Fix: A 'Fast-Track' imaging protocol was established for suspected acute abdomens.\n\nThe Result: Time-to-surgery decreased by an average of 90 minutes, significantly reducing the rate of appendix ruptures.",
      icon: Icons.timer,
    ),
    SlideData(
      title: "8. Example 3: Minimizing Blood Loss",
      content: "Scenario: High blood transfusion rates were observed in total knee replacement surgeries compared to national averages.\n\nThe Audit: The orthopedic department audited their hemostasis protocols against current best practices.\n\nThe Finding: The routine use of Tranexamic Acid (TXA) was inconsistent among different surgeons.\n\nThe Fix: Department-wide education and standardized inclusion of TXA in the preoperative order set.\n\nThe Result: Blood transfusions dropped by 60%, and patients had significantly shorter hospital stays.",
      icon: Icons.bloodtype,
    ),
    SlideData(
      title: "9. Overcoming Common Challenges",
      content: "While audits are incredibly valuable, they aren't always easy to implement.\n\n• Time Constraints: Surgeons are busy. Auditing requires dedicated administrative time.\n• Fear of Judgment: Staff may hide complications out of fear of punishment.\n• Data Accuracy: Poor record-keeping leads to bad audit data.\n\nSolution: Institutions must invest in dedicated audit staff, digital health records, and—most importantly—a supportive environment.",
      icon: Icons.warning_amber,
    ),
    SlideData(
      title: "10. Cultivating a Culture of Safety",
      content: "The success of a surgical audit hinges on the hospital's culture.\n\nWe must shift the conversation from \"Who made a mistake?\" to \"How did the system fail to prevent this mistake?\"\n\nWhen surgeons feel safe discussing their complications openly at Morbidity and Mortality (M&M) conferences, the entire team learns, and systemic safeguards can be put in place.",
      icon: Icons.diversity_3,
    ),
    SlideData(
      title: "11. Conclusion & Key Takeaways",
      content: "• Surgical audits are a lifeline for continuous medical improvement.\n• They require a structured process: measure, analyze, change, and measure again.\n• Real-world examples prove that small systemic changes identified through audits lead to massive improvements in patient survival and recovery.\n• Excellence in surgery isn't about never making a mistake; it's about relentlessly auditing your practice so the same mistake never happens twice.",
      icon: Icons.lightbulb,
    ),
  ];

  void _nextPage() {
    if (_currentPage < _slides.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Importance of Surgical Audit'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _slides.length,
                itemBuilder: (context, index) {
                  return SlideWidget(
                    slide: _slides[index],
                    pageNumber: index + 1,
                    totalPages: _slides.length,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: _currentPage > 0 ? _prevPage : null,
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Previous'),
                  ),
                  Text(
                    'Slide ${_currentPage + 1} of ${_slides.length}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton.icon(
                    onPressed: _currentPage < _slides.length - 1 ? _nextPage : null,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Next'),
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

class SlideData {
  final String title;
  final String? subtitle;
  final String content;
  final IconData icon;

  SlideData({
    required this.title,
    this.subtitle,
    required this.content,
    required this.icon,
  });
}

class SlideWidget extends StatelessWidget {
  final SlideData slide;
  final int pageNumber;
  final int totalPages;

  const SlideWidget({
    super.key,
    required this.slide,
    required this.pageNumber,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Card(
          margin: const EdgeInsets.all(24.0),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(
                      slide.icon,
                      size: 48,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            slide.title,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                          if (slide.subtitle != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              slide.subtitle!,
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(height: 48, thickness: 2),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      slide.content,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            height: 1.5,
                            color: Colors.black87,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
