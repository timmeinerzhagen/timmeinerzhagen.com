<!-- markdownlint-disable-next-line -->
<div align="center">
  <h1 align="center">timmeinerzhagen.com</h1>
  <h3 align="center">Personal website, utilized as landing page, overview, <br>as well as general link distribution</h3>

  [![Deploy](https://github.com/timmeinerzhagen/timmeinerzhagen.com/actions/workflows/deploy.yml/badge.svg)](https://github.com/timmeinerzhagen/timmeinerzhagen.com/actions/workflows/deploy.yml)
  ![website](https://img.shields.io/badge/website-available-green)

</div>

Website content generated via Hugo utilizing the [`hugo-coder`](https://github.com/luizdepra/hugo-coder) theme.

[`timmeinerzhagen.com`](https://timmeinerzhagen.com) is hosted via GitHub Pages.

## Development

- Install Go 1.18+
- Clone the repository including submodules
- Install dependencies with `go install`
- Create local preview server with `hugo serve`

## Live Website Preview

When adding changes to a pull request, the automation will run and create a preview. This will now overwrite the existing page, instead it will put the page in a preview subfolder according to the actions run.

The url will have a form as follows:

```yml
https://timmeinerzhagen.com/preview/${GITHUB_ACTIONS_JOB_RUN_ID}/
```

## Credits

- Uses [`luizdepra/hugo-coder`](https://github.com/luizdepra/hugo-coder)
- Animations based on [`sharadcodes/hugo-theme-serial-programmer`](https://github.com/sharadcodes/hugo-theme-serial-programmer)
- Hosted via GitHub Pages
