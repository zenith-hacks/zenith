# zenith

This repository contains the Zenith beta website: https://beta.zenithhacks.org/

## Contribution process

This repository is not accepting code contributions from people outside Zenith, but you are welcome to create a new issue.

### I'm a Zenith team member

Coordinate with Leo before opening a PR.

## Get started

```
npm run dev -- --open  # opens website in your browser (hot reloads)
npm run build          # builds the website
```

For specific situations:

```
make favicon           # generate favicon.ico
make fonts             # generate font subsets
```

## Guidelines

- Use meaningful CSS class names. Do not use Tailwind.
- Avoid using px.
- Without good reason, do not override the default text size.

## Compatibility

The built website **must**:

- Be compatible with Baseline 2023 browsers.
- Have all features work without JavaScript enabled.
- Meet Lighthouse targets. Every metric should be above 95.
- Support reduced motion
- Comply with the WCAG AA checklist (pending)
