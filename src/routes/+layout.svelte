<script>
  import LogoLarge from '$lib/LogoLarge.svelte';
</script>

<div class="main">
  <slot />
  <footer>
    <div class="footer-inner">
      <a href="/"><LogoLarge></LogoLarge></a>
      <div>
        <p class="title">Zenith Hacks</p>
        <p>
          Hack Zenith 2025 is fiscally sponsored by The Hack Foundation (d.b.a. Hack Club), a
          501(c)(3) nonprofit (EIN: 81-2908499). Hack Zenith 2025 is not an official Hack Club
          event. Use of Hack Club branding does not constitute an endorsement, implied or otherwise,
          of Hack Zenith 2025 by Hack Club.
        </p>
      </div>
      <div class="links">
        <p class="title">Links</p>
        <ul>
          <li><a href="https://hackclub.com/slack/">Join us on the Hack Club Slack</a></li>
          <li><a href="https://github.com/zenith-hacks/zenith">View this page's source code</a></li>
        </ul>
      </div>
      <div class="links">
        <p class="title">Legal</p>
        <ul>
          <li><a href="/privacy">Privacy policy</a></li>
        </ul>
      </div>
    </div>
  </footer>
</div>

<style>
  /* TODO: self-host these */
  @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300..700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Instrument+Sans:ital,wght@0,400..700;1,400..700&display=swap');

  :global(:root) {
    font-family: 'Instrument Sans', system-ui, sans-serif;
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
    font-family: 'Space Grotesk', monospace, sans-serif;
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
    text-decoration: none;
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

  .footer-inner {
    display: flex;
    flex-direction: column;
    gap: 4em;
    margin: auto;
    max-width: 1024px;
  }

  @media (min-width: 1024px) {
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
    font-family: 'Space Grotesk', system-ui, sans-serif;
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
