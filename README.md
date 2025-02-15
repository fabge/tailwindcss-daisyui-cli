# Tailwind CSS standalone CLI bundled with DaisyUI

[![Release](https://github.com/fabge/tailwindcss-daisyui-cli/actions/workflows/release.yml/badge.svg)](https://github.com/fabge/tailwindcss-daisyui-cli/actions/workflows/release.yml)

Repackaged [Tailwind CSS](https://tailwindcss.com) [standalone CLI](https://tailwindcss.com/blog/standalone-cli) that comes bundled with [daisyUI](https://daisyui.com/) - the most popular component library for Tailwind CSS.

This repository employs [GitHub Actions](https://github.com/dobicinaitis/tailwind-cli-extra/actions) to generate patched versions of the upstream CLI tool whenever a new version of Tailwind CSS or daisyUI is released.

## Usage

Download the latest release for your platform from the [releases page](https://github.com/fabge/tailwindcss-daisyui-cli/releases).

The CLI includes DaisyUI by default - no need to install it separately. Just add it to your `app.css`:

```css
@import "tailwindcss";
@plugin "daisyui";
```

## Versions

| Component | Source |
| --- | --- |
| Tailwind CSS | [tailwindlabs/tailwindcss](https://github.com/tailwindlabs/tailwindcss) |
| daisyUI | [saadeghi/daisyui](https://github.com/saadeghi/daisyui) |
