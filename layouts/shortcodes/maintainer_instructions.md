{{ $alt_text := replace ( .Get "slug") "-" " " | title }}
{{ $slug := ( .Get "slug" ) }}
{{ $article_url := ( absURL $slug ) }}
{{ $badge_url := ( absURL ( printf "%s%s" $slug "/badge.svg" ) ) }}

## Maintainers

Here's how to add the badge for this Public Service Announcement to your README

[![](badge.svg)]({{ $article_url }})

**Markdown**
```
[![{{ $alt_text }}]({{ $badge_url }})]({{ $article_url }})
```

**ReStructured text**
```
.. image:: {{ $badge_url }}
  :target: {{ $article_url }}
  :alt: {{ $alt_text }}
```