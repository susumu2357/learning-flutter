import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrect, required this.questionIndex});
  final bool isCorrect;
  final String questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrect
              ? const Color.fromARGB(255, 46, 145, 226)
              : const Color.fromARGB(255, 230, 83, 73),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionIndex,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionIdentifier(
                        isCorrect: data['correct_answer'] == data['user_answer'],
                        questionIndex:
                            ((data['question_index'] as int) + 1).toString()),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data['question'] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Colors.white54,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
