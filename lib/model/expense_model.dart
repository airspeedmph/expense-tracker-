import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  
}

class ExpenseModel {
  ExpenseModel({required this.title, required this.amount, required this.date, required this.category })
    : id = uuid.v4();

  final String title;
  final String id;
  final double amount;
  final DateTime date;
  final Category category;
}
