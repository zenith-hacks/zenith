import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [sveltekit()],
  build: {
    // We don't use JavaScript like at all.
    // Move it out of the critical path.
    modulePreload: false
  },
  css: {
    transformer: "lightningcss"
  }
});
