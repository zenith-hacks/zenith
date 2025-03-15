<script>
  import LogoLarge from '$lib/LogoLarge.svelte';
  import SpaceGroteskTitle from '$lib/fonts/SpaceGrotesk-title-subset-instanced.woff2?url';
  import InstrumentSansASCII from '$lib/fonts/InstrumentSans-asciionly-subset-instanced.woff2?url';

  import fontCSS from './FontStylesheet.css?url';
  /** @type {{children?: import('svelte').Snippet}} */
  let { children } = $props();
</script>

<svelte:head>
  <!-- Look mom, no Google Fonts! -->
  <link
    rel="preload"
    href={SpaceGroteskTitle}
    as="font"
    type="font/woff2"
    fetchpriority="high"
    crossorigin="anonymous"
  />
  <link
    rel="preload"
    href={InstrumentSansASCII}
    as="font"
    type="font/woff2"
    fetchpriority="high"
    crossorigin="anonymous"
  />

  <!-- But we still need the rest of the characters, so run a low priority deferred fetch when JS is enabled -->
  <link id="fontCSS" rel="preload" href={fontCSS} as="style" fetchpriority="low" />
  <script>
    window.addEventListener('load', () => {
      document.getElementById('fontCSS').rel = 'stylesheet';
      document.getElementsByClass;
    });
  </script>
  <noscript>
    <link rel="stylesheet" href={fontCSS} />
  </noscript>
</svelte:head>

<div class="main">
  {@render children?.()}
  <footer>
    <div class="footer-inner">
      <a href="/" aria-label="Go to the homepage"><LogoLarge></LogoLarge></a>
      <div class="links">
        <p class="title">Zenith Hacks</p>
        <ul>
          <li><a href="https://hackclub.com/slack/?event=Zenith%202025">Join us on the Hack Club Slack</a></li>
          <li><a href="https://github.com/zenith-hacks/zenith">View this page's source code</a></li>
          <li><a href="https://hcb.hackclub.com/zenithhacks">Look at our financials</a></li>
        </ul>
      </div>
      <div class="links">
        <p class="title">Follow us</p>
        <ul>
          <li><a href="https://instagram.com/zenith_hacks">Instagram</a></li>
          <li><a href="https://twitter.com/zenith_hacks">Twitter (now called X)</a></li>
          <li><a href="https://www.linkedin.com/company/zenithhacks/">LinkedIn</a></li>
          <!-- <li><a href="https://threads.net/@zenith_hacks">Threads</a></li> -- We may make an ActivityPub instance soon -->
        </ul>
      </div>
      <div class="links">
        <p class="title">Legal</p>
        <ul>
          <li><a href="/privacy">Privacy policy</a></li>
          <li><a href="/conduct">Code of conduct</a></li>
          <li><a href="/privacy/gdpr">GDPR compliance statement</a></li>
        </ul>
      </div>
    </div>
    <p>
      Hack Zenith 2025 is fiscally sponsored by The Hack Foundation (d.b.a. Hack Club), a 501(c)(3) nonprofit (EIN:
      81-2908499). Hack Zenith 2025 is not an official Hack Club event. Use of Hack Club branding does not constitute an
      endorsement, implied or otherwise, of Hack Zenith 2025 by Hack Club.
    </p>
  </footer>
</div>

<style>
  @font-face {
    font-family: 'Zenith Title Grotesk';
    src: url('$lib/fonts/SpaceGrotesk-title-subset-instanced.woff2') format('woff2');
    font-display: swap;
    font-feature-settings: 'ss02' 'ss03' 'ss04' 'ss05';
  }

  @font-face {
    font-family: 'Zenith Sans ASCII';
    src:
      local('Instrument Sans'),
      url('$lib/fonts/InstrumentSans-asciionly-subset-instanced.woff2') format('woff2');
    font-display: swap;
  }

  :global(html) {
    scrollbar-width: thin;
    scrollbar-color: rgba(255, 255, 255, 0.5) rgba(0, 0, 0, 0.5);
  }

  :global(html::-webkit-scrollbar) {
    width: 0.5rem;
  }

  :global(html::-webkit-scrollbar-track) {
    background: rgba(0, 0, 0, 0.5);
  }

  :global(html::-webkit-scrollbar-thumb) {
    background-color: rgba(255, 255, 255, 0.5);
    border-radius: 0.25rem;
  }

  :global(html::-webkit-scrollbar-thumb:hover) {
    background-color: rgba(255, 255, 255, 0.7);
  }

  @media (prefers-reduced-motion: reduce) {
    :global(html::-webkit-scrollbar-thumb) {
      transition: none;
    }
  }

  :global(:root) {
    font-family: 'Zenith Sans ASCII', 'Zenith Sans', system-ui, sans-serif;
    line-height: 1.5;
    -webkit-text-size-adjust: 100%;
    -moz-tab-size: 4;
    tab-size: 4;
    -webkit-tap-highlight-color: transparent;

    /* Theming: use as rgb(var(--bg)) */
    --bg-n10: 4, 9, 18;
    --bg: 4, 11, 22;
    --bg-10: 17, 23, 34;
    --bg-20: 29, 35, 45;
    --bg-30: 41, 47, 57;

    --fg: 240, 242, 255;

    --green: 179, 255, 83;

    /* Breakpoints */
    --breakpoint-sm: 640px;
    --breakpoint-lg: 1024px;
  }

  :global(body) {
    background: rgb(var(--bg));
    color: rgb(var(--fg));
    padding: 0;
    margin: 0;
    width: 100vw;
    overflow-x: hidden;
  }

  :global(h1, h2, h3, h4, h5, h6) {
    font-family: 'Zenith Grotesk', monospace, system-ui, sans-serif;
    text-transform: uppercase;
    font-weight: bolder;
    font-size: inherit;
  }

  :global(h1) {
    font-size: 2em;
  }

  :global(h2) {
    font-size: 1.5em;
  }

  :global(h3) {
    font-size: 1.3em;
  }

  :global(h4) {
    font-size: 1.2em;
  }

  @media (min-width: 640px) {
    :global(h1) {
      font-size: 3em;
    }

    :global(h2) {
      font-size: 2em;
    }

    :global(h3) {
      font-size: 1.8em;
    }

    :global(h4) {
      font-size: 1.5em;
    }
  }

  @media (min-width: 1024px) {
    :global(h1) {
      font-size: 4em;
    }

    :global(h2) {
      font-size: 2em;
    }

    :global(h3) {
      font-size: 1.5em;
    }

    :global(h4) {
      font-size: 1.3em;
    }
  }

  /* The following code is adapted from Tailwind Preflight */

  :global(*, ::before, ::after) {
    box-sizing: border-box;
    border-width: 0;
    border-style: solid;
    border-color: black;
  }

  :global(img, svg, video, canvas, audio, iframe, embed, object) {
    display: block;
  }

  :global(a, :visited) {
    color: inherit;
    text-decoration: underline dotted;
  }

  :global(img, video) {
    max-width: 100%;
    height: auto;
  }

  :global(blockquote, dl, dd, h1, h2, h3, h4, h5, h6, hr, figure, p, pre) {
    margin: 0;
    padding: 0;
  }

  :global(input, button) {
    font-family: inherit;
    font-size: 1em;
    background: rgb(var(--fg));
    color: rgb(var(--bg));
  }

  /* Footer styles */

  footer {
    background: rgb(var(--bg-10));
    padding: 4em;
    min-width: 100vw;
  }

  footer > * {
    margin: auto;
    max-width: 1024px;
  }

  .footer-inner {
    display: flex;
    flex-direction: column;
    gap: 4em;
    margin-bottom: 2em;
  }

  @media (min-width: 640px) {
    .footer-inner {
      flex-direction: row;
    }
  }

  .footer-inner > div {
    flex: 1 1 auto;
  }

  .footer-inner > .links {
    min-width: max-content;
  }

  .footer-inner > .links a:hover {
    text-decoration: underline;
  }

  .footer-inner > :global(svg) {
    flex: 0 0 auto;
  }

  .title {
    font-family: 'Zenith Grotesk', system-ui, sans-serif;
    font-weight: bolder;
  }

  ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
  }

  .main {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    min-width: 100vw;
  }
</style>
