import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GameListItem extends StatelessWidget {
  const GameListItem({required this.game, super.key});

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: game.backgroundImage.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: game.backgroundImage,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                  memCacheHeight: 56,
                  memCacheWidth: 56,
                  placeholder: (context, url) => Container(
                    width: 56,
                    height: 56,
                    color: Colors.grey[200],
                  ),
                  errorWidget: (context, url, error) => Container(
                    width: 56,
                    height: 56,
                    color: Colors.grey[300],
                    child: const Icon(Icons.image_not_supported,
                        color: Colors.grey),
                  ),
                )
              : Container(
                  width: 56,
                  height: 56,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, color: Colors.grey),
                ),
        ),
        title: Text(
          game.name,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(game.slug, style: textTheme.bodySmall),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber[700], size: 16),
                const SizedBox(width: 4),
                Text('${game.rating}', style: textTheme.bodySmall),
                const SizedBox(width: 12),
                Icon(Icons.schedule, size: 16, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text('Playtime: ${game.playtime}h', style: textTheme.bodySmall),
              ],
            ),
          ],
        ),
        isThreeLine: true,
        dense: false,
      ),
    );
  }
}
