# website

Zenith website.

## Contribution process

This repository is not accepting code contributions from people outside Zenith, but you are welcome to create a new issue.

### I'm a Zenith team member

This repository is Sarah's problem—in general, please talk to me about anything you're going to do before you do it to ensure that the website is held to a high standard.

To report and fix an issue, open an issue or shoot me a Slack message about it and I'll tell you what to do next. If it is really trivial, just open a PR. Avoid merging without a review.

## Get started

```
npm run dev -- --open  # opens website in your browser (hot reloads)
npm run build          # builds the website
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
