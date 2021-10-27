import 'package:dismissible_page/dismissible_page.dart';
import 'package:example/_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoryPage extends StatelessWidget {
  final StoryModel story;

  const StoryPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismiss: () => Navigator.of(context).pop(),
      isFullScreen: false,
      dragSensitivity: .4,
      maxTransformValue: 4,
      direction: DismissDirection.vertical,
      child: Material(
        color: Colors.transparent,
        child: Hero(
          tag: story.storyId,
          child: Container(
            padding: const EdgeInsets.all(20),
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(story.imageUrl!),
              ),
            ),
            child: Text(
              story.title,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
