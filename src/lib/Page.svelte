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
	
	div > :global(p) {
		margin: 2em 0;
	}
</style>