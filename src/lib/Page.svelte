<script>
  export let title;
</script>

<svelte:head>
  <title>{title} - Zenith Hacks</title>
</svelte:head>

<div>
  <slot />
</div>

<style>
  div {
    width: 1024px;
    margin: auto;
    padding: 8em 2em;
    max-width: 100%;
  }

  div :global(p),
  div :global(ul),
  div :global(ol) {
    margin: 1em 0;
  }

  div :global(h1),
  div :global(h2),
  div :global(h3),
  div :global(h4) {
    margin-top: 2em;
  }

  div :global(a:hover) {
    text-decoration: underline;
  }
</style>