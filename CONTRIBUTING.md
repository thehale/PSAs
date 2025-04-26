# Contributing

Thanks for your interest in improving Public Service Announcements!

Here's the basic workflow for contributing:
1. [Setup your environment](#environment-setup)
2. Follow the instructions in the section that best matches the type of
   contribution you want to make
3. [Open a pull request](#open-a-pull-request)

If you've never contributed to an open source project before, consider reading
[opensource.guide's "How to Contribute to Open
Source"](https://opensource.guide/how-to-contribute/) article to get an idea of
what to expect from the experience. (Hint: It's great!)

## Environment Setup

1. Fork a personal copy of this repo and clone it to your computer.
2. Download a [Hugo binary](https://github.com/gohugoio/hugo/releases) to `./hugo`
   (v0.147.0 or later)
    - Ubuntu: `make setup-ubuntu`
3. Pull all the git submodules: `git submodule update --init --recursive`
4. Run the site locally: `make run` -> https://localhost:1313

Hugo auto-reloads the site to match your local changes, so you are ready to
start developing!


## Add a new announcement

1. Choose a title for your announcement in [kebab-case](https://developer.mozilla.org/en-US/docs/Glossary/Kebab_case) (e.g. `my-custom-announcement`)
2. Scaffold the new announcement using `make announcement title=my-custom-announcement`
3. Add your announcement details to `content/my-custom-announcement/index.md`,
   without modifying the front matter.
   - Aim for brief, clear, friendly phrasing. The goal is to be firmly, but
     pleasantly informative.
4. Create and add a `badge.svg` to the announcement's folder.
   - NOTE: Hopefully badges will be auto-generated someday, but for now it's still
     manual.

### Create an announcement badge

1. Make a copy of an existing badge
2. Edit the text to the new announcement
   - Use the standard `Verdana` font, size 10, bold face, no stroke.
   - Resize the gray bounding box to look nice (e.g. a few pixels of padding on
     the left/right)
3. Convert the text to a path
4. Minify the SVG

> [!TIP]
> I like to use [Inkscape](https://inkscape.org/) to edit the SVGs. For
> minification I use the [`jock.svg` VS Code extension](https://marketplace.visualstudio.com/items?itemName=jock.svg).

## Update an announcement

Announcements are stored in the `content` folder. Each announcement has it's own
folder. Update the announcement's `index.md` file to change its content.

Some things to consider:
   - Please leave the folder names alone. Changing a folder name changes the
     announcement's URL and thus would break any existing badges/other links.
   - Aim for brief, clear, friendly phrasing. The goal is to be firmly, but
     pleasantly informative.
   - If you speak another language, please [update
     translations](#contribute-translations) to match your change.

## Contribute Translations

While there are fancy tools for managing translations (e.g. Crowdin, Weblate,
etc.), right now this project asks translators to make their changes directly in
the git repository.

The Hugo provides lots of options for [configuring multiple
languages](https://gohugo.io/configuration/languages/) and [organizing
translated content](https://gohugo.io/content-management/multilingual/) which
you can read about in their docs.

In this project, translations are provided by adding an additional language
suffix to a file name, e.g. `index.md` -> `index.es.md`. The list of currently
supported suffixes is defined in `config/_default/languages.toml`.

### Adding a new language

1. Add the language to `config/_default/languages.toml`
   - Make sure to use a [valid language
     suffix](https://www.w3.org/International/articles/language-tags/). Here's
     the [authoritative list fron IANA](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).
2. Create and translate `params.lang.toml`, `menus.lang.toml`, and `i18n/lang.yaml`.
   - Replace `lang` with the language suffix you added in step 1.
3. Translate at least one announcement (`index.lang.md`).

### Language Specific Guidelines

<details>
<summary>Spanish (Español)</summary>

- Use the "usted" form.

</details>


## Open a Pull Request

### Preferences for Commits

This project prefers writing commits using the [Conventional
Commits](https://www.conventionalcommits.org/en/v1.0.0/#examples) format. That
sounds fancy, but it mostly means that commit titles should start with a prefix
(e.g. `feat: Add announcement "Purely Personal"`).

Here's how this project typically chooses prefixes based on the type of change:
   - `feat`: New announcements (including new translations), improvements to the site design.
   - `fix`: Corrections to existing announcements (including translations).
   - `build`: Improvements/fixes to the setup/build tooling.
   - `docs`: Enhancing/translating the README, CONTRIBUTING and other documentation.
   - See [Conventional
Commits](https://www.conventionalcommits.org/en/v1.0.0/#examples) for other
common prefixes.

If your changes match multiple prefixes, please make multiple commits.

### Submitting a Pull Request

After pushing your commits to your fork, [open a pull
request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork)
back into the main project.
   - Make sure to fill out the pull request template, if any.
   - Please enable **Allow edits from maintainers**.

### Timelines for Review

This project is maintained by volunteers in their spare time. We aim to review
all pull requests quickly, but please be patient if we take longer than you'd
expect.

If, after a week or two, we haven't shown any acknowledgement of your pull request
(e.g. commenting, adding a label, etc.), feel free to add a comment along the
lines of "When you're available, I would still love a review of this pull
request".

Thanks for contributing!!