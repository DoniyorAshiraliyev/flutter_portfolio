import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/home/models/project_model.dart';
import 'package:flutter_portfolio/home/project_card.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final columns = sqrt(myProjects.length).truncate().toInt();
    return SizedBox(
      width: columns * 600,
      child: Wrap(
          children: List.generate(
            myProjects.length,
                (index) => Transform.translate(
              offset: Offset(0, index.isEven ? 240 : 0),
              child: ProjectCard(index:index),
              )
            ),
          )
    );
  }
}
