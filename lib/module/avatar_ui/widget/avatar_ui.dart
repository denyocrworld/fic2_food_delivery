import 'package:flutter/material.dart';

//AvatarContainer
class AvatarContainer extends StatefulWidget {
  final String? url;

  const AvatarContainer({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<AvatarContainer> createState() => _AvatarContainerState();
}

class _AvatarContainerState extends State<AvatarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            widget.url!,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
    );
  }
}

//AvatarCircle
class AvatarCircle extends StatefulWidget {
  final String? url;

  const AvatarCircle({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<AvatarCircle> createState() => _AvatarCircleState();
}

class _AvatarCircleState extends State<AvatarCircle> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
        widget.url!,
      ),
    );
  }
}

//ContainerBackground
class ContainerBackground extends StatefulWidget {
  final Color? backgroundColor;
  final String? title;

  const ContainerBackground({
    Key? key,
    required this.backgroundColor,
    required this.title,
  }) : super(key: key);

  @override
  State<ContainerBackground> createState() => _ContainerBackgroundState();
}

class _ContainerBackgroundState extends State<ContainerBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.backgroundColor!,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Text(
        widget.title!,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

//CircleBackground
class CircleBackground extends StatefulWidget {
  final Color? backgroundColor;
  final String? title;

  const CircleBackground({
    Key? key,
    required this.backgroundColor,
    required this.title,
  }) : super(key: key);

  @override
  State<CircleBackground> createState() => _CircleBackgroundState();
}

class _CircleBackgroundState extends State<CircleBackground> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: widget.backgroundColor!,
      child: Center(
        child: Text(
          widget.title!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

//RoundedImage
class RoundedImage extends StatefulWidget {
  final String? url;

  const RoundedImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<RoundedImage> createState() => _RoundedImageState();
}

class _RoundedImageState extends State<RoundedImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            widget.url!,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12.0,
          ),
        ),
      ),
    );
  }
}

//Thumbnail
class Thumbnail extends StatefulWidget {
  final String? url;
  final double? height;
  final double? width;

  const Thumbnail({
    Key? key,
    this.height,
    this.width,
    required this.url,
  }) : super(key: key);
  @override
  State<Thumbnail> createState() => _ThumbnailState();
}

class _ThumbnailState extends State<Thumbnail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height!,
        width: widget.width!,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.url!,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  5.0,
                ),
              ),
            ),
          ),
        ));
  }
}

//CircleThumbnail
class CircleThumbnail extends StatefulWidget {
  final String? url;
  final double? height;
  final double? width;

  const CircleThumbnail({
    Key? key,
    this.height,
    this.width,
    required this.url,
  }) : super(key: key);
  @override
  State<CircleThumbnail> createState() => _CircleThumbnailState();
}

class _CircleThumbnailState extends State<CircleThumbnail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height!,
        width: widget.width!,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Expanded(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              widget.url!,
            ),
          ),
        ));
  }
}
