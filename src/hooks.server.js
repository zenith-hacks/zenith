export async function handle({ event, resolve }) {
  const response = await resolve();

  // Disable JS preloading. This took hours to find.
  // I hate web development.
  response.headers.delete('link');

  return response;
}
