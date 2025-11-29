import 'package:expense_tracer/models/expese.dart';
import 'package:expense_tracer/widgets/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ExpenseItems(expenses[index]),
    );
  }
}
