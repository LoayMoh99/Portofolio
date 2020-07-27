import 'package:flutter/material.dart';
import 'package:webapp/utils/goToGitHubURL.dart';

import '../utils/utalities.dart';

class ProjectDialog extends StatelessWidget {
  final int indexx;

  const ProjectDialog(this.indexx);

  Widget projectContent(context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
            itemCount: projects[indexx].noPhotos,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/${projects[indexx].logo}/${projects[indexx].logo}${index + 1}.png',
                  fit: BoxFit.fill,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('${projects[indexx].title} ${projects[indexx].madeBy} App'),
        //content: projectContent(),
        content: projectContent(context),
        actions: [
          RaisedButton(
            onPressed: () {
              onProjectTap(projects[indexx].githubLink);
            },
            child: Text(
              'See Full Project on GitHub',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }
}
