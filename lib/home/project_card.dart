import 'package:flutter/material.dart';
import 'package:flutter_portfolio/home/models/project_model.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.index,
  });
  final int index;
  goToMoviePage(BuildContext context) {
    return Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return myProjects[index].onCallProject;
    }));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToMoviePage(context),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        height: 500,
        child: Stack(
          children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/project_images/${myProjects[index].image}",
                width: 300,
                height: 533,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    myProjects[index].name,
                    style: const TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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
