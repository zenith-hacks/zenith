<script>
  /** @type {{title: string, children?: import('svelte').Snippet}} */
  let { title, children } = $props();
</script>

<svelte:head>
  <title>{title} - Zenith Hacks</title>
</svelte:head>

<div>
  {@render children?.()}
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

  div :global(hr) {
    border-top: 1px solid rgb(var(--fg));
    opacity: 50%;
    margin-top: 2em;
  }
</style>
