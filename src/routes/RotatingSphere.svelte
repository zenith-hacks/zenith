<script>
  /** @type {{verticalLines?: number, horizontalLines?: number, style: string}} */
  let { verticalLines = 10, horizontalLines = 10, style } = $props();

  let verticalAngle = Math.PI / verticalLines;
  let horizontalAngle = Math.PI / horizontalLines;

  // This sphere works by just stretching and squishing ellipses.
  // Calculating the size of those ellipses accounts for most of the complexity
</script>

<div class="outer-sphere" {style}>
  <div class="sphere">
    <div class="sphere-outline"></div>
    {#each Array(verticalLines) as _, i}
      <div
        class="y right"
        style={`--w: ${Math.abs(Math.sin(i * verticalAngle) * 100)}%; --wt: ${Math.abs(Math.sin((i + 1) * verticalAngle) * 100)}%`}
      ></div>
    {/each}
    {#each Array(verticalLines + 1) as _, i}
      {#if i == 0}
        <!-- for i = 0 the ellipse goes in the wrong direction, so flip wt and w here -->
        <div
          class="y left"
          style={`--wt: ${Math.abs(Math.sin(i * verticalAngle) * 100)}%; --w: ${Math.abs(Math.sin((i - 1) * verticalAngle) * 100)}%`}
        ></div>
      {:else}
        <div
          class="y left"
          style={`--w: ${Math.abs(Math.sin(i * verticalAngle) * 100)}%; --wt: ${Math.abs(Math.sin((i - 1) * verticalAngle) * 100)}%`}
        ></div>
      {/if}
    {/each}
    {#each Array(horizontalLines) as _, i}
      <div class="x" style={`--w: ${Math.abs(Math.sin(i * horizontalAngle) * 100)}%`}></div>
    {/each}
  </div>
</div>

<style>
  @keyframes sphere {
    from {
      width: var(--wt);
    }

    to {
      width: var(--w);
    }
  }

  .outer-sphere {
    position: absolute;
    height: 100%;
    aspect-ratio: 3;
    left: 50%;
    bottom: 0;
    transform: translateX(-50%);
  }

  .sphere {
    position: absolute;
    clip-path: ellipse(closest-side farthest-side);
    width: 100%;
    aspect-ratio: 1;
  }

  .sphere-outline {
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 100%;
    border: 4px solid rgb(var(--fg));
  }

  .y {
    animation: sphere 5s linear infinite;
    height: 100%;
    position: absolute;
    border-radius: 100%;
    border: 4px solid rgb(var(--fg));
    left: 50%;
    transform: translateX(-50%);
  }

  .right {
    clip-path: polygon(50% 0%, 100% 0%, 100% 100%, 50% 100%);
    background: rgba(var(--bg-10), 20%);
  }

  .left {
    clip-path: polygon(0% 0%, 50% 0%, 50% 100%, 0% 100%);
    background: rgba(var(--bg-10), 20%);
  }

  @media (prefers-reduced-motion) {
    .y {
      animation: none;
      width: var(--wt);
    }
  }

  .x {
    position: absolute;
    width: 200%;
    height: var(--w);
    position: absolute;
    border-radius: 100%;
    border: 4px solid rgb(var(--fg));
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
</style>
