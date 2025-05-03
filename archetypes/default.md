+++
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
slug = '{{ .File.ContentBaseName }}'
date = {{ .Date }}
type = "psa"
[[resources]]
  src = "badge.svg"
  name = "badge"
+++

Thanks for your interest in using open-source software! You're probably here
because a project linked to this page.

Here's what the author(s) of that project want you to know:
 - You are welcome to use the code! It's exciting that you find it useful.
 - [ ] TODO - What do you want visitors to understand when they visit a project
   displaying this PSA?
 - The code is open-source. Feel free to make a fork to resolve any
   shortcomings for your needs.
 - Remember to follow the terms in the project's license.

{{% maintainer_instructions slug="{{ .File.ContentBaseName }}" %}}