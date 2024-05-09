## Adding a new announcement

1. Choose a title for your announcement in [kebab-case](https://developer.mozilla.org/en-US/docs/Glossary/Kebab_case) (e.g. `my-custom-announcement`)
2. Scaffold the new announcement using `make announcement title=my-custom-announcement`
3. Add your announcement details to `content/my-custom-announcement/index.md`,
   without modifying the front matter.
4. Create and add a `badge.svg` to the announcement's folder.
   - NOTE: Hopefully this will be auto-generated someday, but for now it's still
     manual.
   

## Creating an announcement badge

1. Make a copy of an existing badge
2. Edit the text to the new announcement
   - Use the standard `Sans` font, size 10, bold face
   - Resize the gray bounding box to look nice (e.g. a few pixels of padding on
     the left/right)
3. Convert the text to a path
4. Minify the SVG

> NOTE: I like to use [Inkscape](https://inkscape.org/) to edit the SVGs. For
> minification I use the [`jock.svg` VS Code extension](https://marketplace.visualstudio.com/items?itemName=jock.svg).