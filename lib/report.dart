import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class ReportOptions {
  final String label;
  ReportOptions(this.label);
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(child: ReportPage()),
    );
  }
}

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List<ReportOptions> options = [
    ReportOptions("I just don't like it"),
    ReportOptions("It's spam"),
    ReportOptions("False information"),
    ReportOptions("Scam or fraud"),
  ];

  ReportOptions? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Post'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select the reason for reporting:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: options
                    .map(
                      (option) => RadioListTile<ReportOptions>(
                        title: Text(option.label),
                        value: option,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (selectedOption != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NextPage(selectedOption!.label),
                      ),
                    );
                  } else {
                    // Show an error message or handle the case where no option is selected.
                  }
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String reportReason;

  const NextPage(this.reportReason, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check,
                color: Colors.green,
                size: 54,
              ),
              const Text(
                'Thanks for letting us know',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'We Use These Reports To',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                reportReason,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Understand problems that people are having with different types of content on Instagram',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.hide_image,
                    color: Colors.blue,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Show you less of this kind of content in the future',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Add text field or other input widgets for additional details
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Handle navigation or any action for the Next button in the bottom navigation bar.
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
