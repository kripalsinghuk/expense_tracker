import 'package:expense_tracer/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracer/models/expese.dart';
import 'package:expense_tracer/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Burger & cold coffie",
      amount: 100.00,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Burger & cold coffie",
      amount: 100.00,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  //When in state class the context there in behind by flutter.
  //When we see builder we must provide function.
  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx) => NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
