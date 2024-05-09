## Maintainers

Here's how to add the badge for this Public Service Announcement to your README

[![](badge.svg)]({{ .Get "slug" }}.md)

**Markdown**
```
[![{{ replace ( .Get "slug") "-" " " | title }}]({{ .Page.Site.BaseURL }}{{ .Get "slug" }}/badge.svg)]({{ .Page.Site.BaseURL }}{{ .Get "slug" }})
```

**ReStructured text**
```
.. image:: {{ .Page.Site.BaseURL }}{{ .Get "slug" }}/badge.svg
  :target: {{ .Page.Site.BaseURL }}{{ .Get "slug" }}
  :alt: {{ replace ( .Get "slug") "-" " " | title }}
```