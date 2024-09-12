import SpaceGroteskTitle from '$lib/fonts/SpaceGrotesk-title-subset-instanced.woff2?url';
import InstrumentSansASCII from '$lib/fonts/InstrumentSans-asciionly-subset-instanced.woff2?url';

export async function handle({ event, resolve }) {
  const response = await resolve(event);

  // Disable JS preloading. This took hours to find.
  // I hate web development.
  // Also, use the link header to preload our fonts because they're the biggest things on the site.
  response.headers.set(
    'link',
    `<${SpaceGroteskTitle}>; rel"preconnect", <${InstrumentSansASCII}>; rel="preconnect"`
  );

  return response;
}
