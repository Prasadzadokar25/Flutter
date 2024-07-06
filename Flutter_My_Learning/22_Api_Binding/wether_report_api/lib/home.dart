import 'package:flutter/material.dart';
import 'package:wether_report_api/Controller/feach_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var wetherReport;
  @override
  void initState() {
    super.initState();
    wetherReport = FeachData.feachWetherInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Wether Report"),
        centerTitle: true,
      ),
    );
  }
}
