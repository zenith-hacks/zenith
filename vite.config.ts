import { sveltekit } from '@sveltejs/kit/vite';
import { enhancedImages } from '@sveltejs/enhanced-img';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [sveltekit(), enhancedImages()],
  build: {
    // We don't use JavaScript like at all.
    // Move it out of the critical path.
    modulePreload: false
  },
  css: {
    transformer: "lightningcss"
  }
});
