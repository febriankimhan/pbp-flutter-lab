import 'package:counter_7/drawer.dart';
import 'package:counter_7/form_budget.dart';
import 'package:flutter/material.dart';

class ShowBudgetDataPage extends StatefulWidget {
  const ShowBudgetDataPage({super.key});

  @override
  State<ShowBudgetDataPage> createState() => _ShowBudgetDataPageState();
}

class _ShowBudgetDataPageState extends State<ShowBudgetDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: listDataBudget,
        ),
      ),
    );
  }
}