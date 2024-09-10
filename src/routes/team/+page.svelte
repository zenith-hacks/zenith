<script>
  import R from '$lib/people/R.svg';
  import Briyan from '$lib/people/Briyan.svg';
  import Leo from '$lib/people/Leo.svg';
  import Mahad from '$lib/people/Mahad.svg';
  import Hamza from '$lib/people/Hamza.svg';
  import Sarah from '$lib/people/Sarah.svg';
  import Karl from '$lib/people/Karl.svg';
  import Nitika from '$lib/people/Nitika.svg';
</script>

<svelte:head>
  <title>Meet the Zenith team - Zenith Hacks</title>
</svelte:head>

<main>
  <h1>Meet the Zenith team</h1>

  <article>
    <img src={R} alt="R's avatar against a navy blue background. His head is a triangle" />
    <div class="profile-card">
      <h2>R</h2>
      <p class="tagline">Event lead</p>
      <q class="description">Hey! I'm R, I own a nonprofit and I love doing new things! Let's meet at Zenith!</q>
      <p>When asked for a color and a shape, he picked navy blue and a triangle.</p>
    </div>
  </article>
  
  <article class="right">
    <img src={Leo} alt="Leo's avatar against a dark purple background. His head is an octagon" />
    <div class="profile-card">
      <h2>Leo</h2>
      <p class="tagline">Safeguarding lead</p>
      <q class="description">Something something description here. They haven't answered me yet.</q>
      <p>When asked for a color and a shape, he picked purple and an octagon.</p>
    </div>
  </article>
  
  <article>
    <img src={Sarah} alt="Sarah's avatar against a pink background. Her head is an icosahedron" />
    <div class="profile-card">
      <h2>Sarah</h2>
      <p class="tagline">Data privacy coordinator, design lead and web developer</p>
      <q class="description">Hi! I'm Sarah. I made the website you're looking at.</q>
      <p>
        She wasn't asked for a color and a shape because she would be talking to herself.
        She picked an icosahedron, and she thinks everyone else's choices are boring. (No offense.)
      </p>
    </div>
  </article>
  
  <article class="right">
    <img src={Hamza} alt="Hamza's avatar against a dark purple background. His head is an hexagon" />
    <div class="profile-card">
      <h2>Hamza</h2>
      <p class="tagline">Web developer</p>
      <q class="description">Something something description here. They haven't answered me yet.</q>
      <p>When asked for a color and a shape, he picked orange and a hexagon.</p>
    </div>
  </article>
  
  <article>
    <img src={Mahad} alt="Mahad's avatar against a navy blue background. His head is a hexagon" />
    <div class="profile-card">
      <h2>Mahad</h2>
      <p class="tagline">Sponsor outreach and developer</p>
      <q class="description">I'm a 15-year-old high schooler and software engineer from the UK!</q>
      <p>When asked for a color and a shape, he picked light blue and a hexagon.</p>
    </div>
  </article>
  
  <article class="right">
    <img src={Karl} alt="Karl's avatar against a green background. His head is missing" />
    <div class="profile-card">
      <h2>Karl</h2>
      <p class="tagline">Hardware design</p>
      <q class="description">Wdym</q>
      <p>When asked for a color and a shape that isn't round, he was stubborn, which is why he doesn't have a head.</p>
    </div>
  </article>
  
  <article>
    <img src={Briyan} alt="Briyan's avatar against a navy blue background. His head is a square" />
    <div class="profile-card">
      <h2>Briyan</h2>
      <p class="tagline">Sponsor outreach</p>
      <q class="description">Hey there! I'm Briyan Dyju from the United Arab Emirates and I'll be helping organising Zenith this season!</q>
      <p>When asked for a color and a shape, he was confused. We eventually settled on yellow and a square.</p>
    </div>
  </article>
  
  <article>
    <img src={Nitika} alt="Nitika's avatar against a light pink background. Her head is a heart" />
    <div class="profile-card">
      <h2>Nitika</h2>
      <p class="tagline">Helper</p>
      <q class="description">Something something description here. They haven't answered me yet.</q>
      <p>When asked for a color and a shape, she picked light pink and a heart. Despite technically not being allowed, I accepted it anyway.</p>
    </div>
  </article>
</main>

<style>
  main {
    width: 1024px;
    margin: auto;
    padding: 8em 2em;
    max-width: 100%;
    
    display: flex;
    flex-direction: column;
    gap: 4em;
  }
  
  article {
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    align-items: flex-start;
    gap: 2em;
  }
  
  @media (min-width: 1024px) {
    article {
      flex-direction: row;
    }
    
    .right {
      flex-direction: row-reverse;
    }
  }
  
  article > img {
    flex: 0;
    min-width: min-content;
  }
  
  .profile-card {
    flex: 1 1 0;
    width: 100%;
    padding: 1em;
    background: rgb(var(--bg-20));
    box-shadow: 0.5em 0.5em rgb(var(--bg-30));
    min-width: min-content;
  }
  
  p {
    margin: 0.5em 0;
  }
  
  .description {
    padding-left: 1em;
    border-left: 2px solid rgb(var(--fg));
  }
  
  .description::before {
    content: "\201C";
  }
  
  .description::after {
    content: "\201D";
  }
</style>