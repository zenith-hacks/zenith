import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [sveltekit()],
  build: {
    // We don't use JavaScript like at all.
    // Move it out of the critical path.
    modulePreload: false,

    // We already inline our SVGs by making them Svelte components.
    // Everything that is not supposed to be inlined is deliberate.
    assetsInlineLimit: 0,

    // Do as much as we can on the server.
    ssr: true
  }
});
