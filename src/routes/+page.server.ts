import type { Actions } from "./$types";
import { env } from "$env/dynamic/private"
import { fail } from "@sveltejs/kit";

export const actions: Actions = {
  email: async ({ request }) => {
    const formData = await request.formData()
    const email = formData.get('email');
    
    if (typeof email !== "string" || email.indexOf("@") == null) {
      return fail(400)
    }

    const result = await fetch(env.REMOTE_URL, {
      method: "POST",
      body: JSON.stringify({
        ip: request.headers.get("CF-Connecting-IP"),
        ua: request.headers.get("User-Agent"),
        geo: `${request.cf?.city}, ${request.cf?.region}`,
        email: email
      })
    })

    const resultJson = await result.json()
    const resultOk = resultJson.success
    
    if (resultOk) {
      return null
    } else {
      return fail(500)
    }
  }
};
