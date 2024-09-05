<script>
	import Hill0 from '$lib/hills/Hill0.svelte';
	import Hill1 from '$lib/hills/Hill1.svelte';
	import Hill2 from '$lib/hills/Hill2.svelte';
	import Hill3 from '$lib/hills/Hill3.svelte';
	import Sparkles from '$lib/Sparkles.svelte';
	import Sphere from '$lib/Sphere.svelte';
</script>

<div class="scenery">
	<!-- Header -->
	<Sparkles />
	<div class="zenith-header">
		<h1>Zenith <span class="date">2025<span></span></span></h1>
		<p class="header-promo">
			Zenith is a hackathon led by the Hack Club community coming this August. Join us and make
			something awesome!
		</p>
		<aside>Zenith is not endorsed by Hack Club or the Hack Foundation.</aside>
		<form class="outer-email-form">
			<p>Get exactly one (1) email when sign ups open:</p>
			<label for="email">Your email</label>
			<div class="email-form">
				<input
					id="email"
					type="email"
					name="email"
					placeholder="sarah@example.com"
					required
					data-lp-igore
					data-lpignore="true"
					data-bwignore
					data-form-type="other"
				/>
				<button id="submit" type="submit"></button>
			</div>
		</form>
	</div>

	<!-- Scenery and big circle -->
	<div class="scenery-hills" aria-hidden="true">
		<div class="scenery-hill-wrapper" style="z-index: 1; --fill: var(--bg-30)">
			<Hill0></Hill0>
		</div>
		<div
			class="scenery-hill-wrapper"
			style="z-index: 2; --fill: var(--bg-20); --last-fill: var(--bg-30)"
		>
			<Hill1></Hill1>
		</div>
		<div
			class="scenery-hill-wrapper"
			style="z-index: 3; --fill: var(--bg-10); --last-fill: var(--bg-20)"
		>
			<Hill2></Hill2>
		</div>

		<!-- TODO -->
		<div class="wireframe-sphere"></div>

		<div
			class="scenery-hill-wrapper"
			style="z-index: 5; --fill: var(--bg); --last-fill: var(--bg-10)"
		>
			<Hill3></Hill3>
		</div>
	</div>
</div>

<div class="info">
	<h2>What is Zenith?</h2>
	<div>
		<div>
			<p>
				Zenith 2025 is a hackathon in San Francisco organised by and for teens. Join us for 2 days
				to share and collaborate with like minded individuals in a supportive, mistake friendly
				environment.
			</p>
		</div>
		<div></div>
	</div>
</div>

<div class="info info-right">
	<h2>What's a hackathon?</h2>
	<div>
		<div>
			<p>
				<!-- TODO: Change this -->
				A hackathon is a social event focused on coding where teenagers come together to learn, build,
				and share their results with others!
			</p>
		</div>
		<div></div>
	</div>
</div>

<div class="info">
	<h2>Can I come?</h2>
	<div>
		<div>
			<p>You'll need to bring a laptop and an enthusiasm for technology.</p>
			<p>
				However, we understand that not everyone can afford to come to Zenith. Thanks to our
				sponsors, we're able to pay for your travels if you can't pay for your travels&mdash;even if
				you live outside of the US. We've got limited funds, so apply early if you need help with
				paying for travel.
			</p>
		</div>
		<div class="image-box">
			<Sphere />
		</div>
	</div>
</div>

<style>
	/* Scenery styles */

	.scenery {
		/* Viewport box that contains the hills and the circle Thing */
		background: rgb(var(--bg-n10));

		width: 100%;
		height: 100vh;

		display: flex;
		flex-direction: column;
		gap: 4em;
	}

	.scenery > :global(svg) {
		/* Sparkles */
		display: none;
		z-index: -1;
		position: absolute;
		top: 0;
		right: 0;
	}

	/* Header styles */

	h1 {
		font-size: 4em;
		line-height: 1;
		width: min-content;
	}

	.header-promo {
		font-size: 1.2em;
		line-height: 1.2;
	}

	.date {
		color: #b3ff53;
	}

	.zenith-header {
		display: flex;
		flex-direction: column;
		gap: 0.5em;
		padding: 2em;
	}

	aside {
		opacity: 80%;
		font-size: 0.8em;
	}

	@media (min-width: 640px) {
		h1 {
			font-size: 6em;
			width: max-content;
		}

		.header-promo {
			font-size: 2em;
		}

		.zenith-header {
			width: min-content;
		}
	}

	@media (min-width: 1024px) {
		h1 {
			font-size: 8em;
		}

		.zenith-header {
			padding: 4em;
		}

		.scenery > :global(svg) {
			display: block;
		}
	}

	/* Form styles */

	.outer-email-form {
		display: flex;
		flex-direction: column;
		gap: 0.5em;
		margin-top: 1em;
	}

	.outer-email-form > label {
		font-size: 0.8em;
	}

	.email-form {
		display: flex;
		flex-direction: row;
		gap: 1em;
		max-width: 32em;
	}

	.email-form > * {
		height: 3em;
	}

	.email-form > input {
		flex: 1 1 0;
		min-width: 0;
		padding-left: 1.5em;
	}

	.email-form > button {
		flex: 0 0 3em;
		padding: 0;
	}

	/* Scenery */

	.scenery-hills {
		display: flex;
		justify-content: flex-end;
		flex-direction: column;
		width: 100%;
		min-height: 0;
		flex: 1 1 auto;
		overflow: clip;
		gap: 0;

		container-name: scenery;
		container-type: size;
	}

	.scenery-hill-wrapper {
		flex: auto;
		display: flex;
		max-height: 240px;
		min-height: 0;
		justify-content: center;
	}

	.scenery-hill-wrapper :global(svg) {
		min-width: 1920px;
		width: 100vw;
		overflow: visible;
	}

	.scenery-hill-wrapper :global(path) {
		fill: rgb(var(--fill));
		filter: drop-shadow(0px -4px 4px rgba(83, 83, 83, 0.25));
	}

	@container scenery (min-height: 490px) {
		.scenery-hill-wrapper {
			background: rgb(var(--last-fill));
		}
	}

	/* Info bars */

	.info {
		padding: 2rem;
		margin: auto;
		max-width: 1024px;
		font-size: 1.2em;
	}

	.info > div {
		display: flex;
		flex-direction: column;
		gap: 2rem;
	}

	.info > div > div {
		min-width: 0;
		flex: 1 1 0;
	}

	.image-box {
		display: flex;
		justify-content: center;
		align-items: center;
	}

	@media (min-width: 640px) {
		.info > div {
			flex-direction: row;
		}

		.info-right {
			text-align: right;
		}

		.info-right > div {
			flex-direction: row-reverse;
		}
	}

	@media (min-width: 1024px) {
		.info {
			padding: 4rem;
		}
	}
</style>
