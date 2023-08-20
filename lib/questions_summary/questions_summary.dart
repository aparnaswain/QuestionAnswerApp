import 'package:flutter/material.dart';
import 'package:qus_ans/questions_summary/summary_item.dart';

class QustionSummary extends StatelessWidget {
  const QustionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }
        ).toList(),),
      ),
    );
  }
}
