{{ $alt_text := replace ( .Get "slug") "-" " " | title }}
{{ $slug := ( .Get "slug" ) }}
{{ $article_url := ( absURL $slug ) }}
{{ $badge_url := ( absURL ( printf "%s%s" $slug "/badge.svg" ) ) }}

## Add this badge to your project

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