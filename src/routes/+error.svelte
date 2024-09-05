<script lang="ts">
  import { page } from '$app/stores';
</script>

<svelte:head>
  <title>{$page.status} {$page.error!.message} - Zenith Hacks</title>
</svelte:head>

<div>
  <h1>{$page.error!.message}</h1>
  <p>Something went wrong. If you entered a web address please check it was correct.</p>

  <a href="/">Go to the home page</a>
</div>

<style>
  div {
    display: flex;
    flex-direction: column;
    width: min-content;
    margin: auto;
    padding: 8em 2em;
    max-width: 100%;
  }

  h1 {
    width: max-content;
    max-width: 100%;
  }
</style>
