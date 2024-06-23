import {generate} from "@genkit-ai/ai";
import {configureGenkit} from "@genkit-ai/core";
import {firebaseAuth} from "@genkit-ai/firebase/auth";
import {onFlow} from "@genkit-ai/firebase/functions";
<<<<<<< HEAD

import * as z from "zod";
import {firebase} from "@genkit-ai/firebase";
=======
import {geminiPro} from "@genkit-ai/googleai";
import * as z from "zod";
import {firebase} from "@genkit-ai/firebase";
import {googleAI} from "@genkit-ai/googleai";
>>>>>>> 9b601e6ec5512854f5e3ebaf0b09d866f90e8933

configureGenkit({
  plugins: [
    firebase(),
<<<<<<< HEAD
=======
    googleAI(),
>>>>>>> 9b601e6ec5512854f5e3ebaf0b09d866f90e8933
  ],
  logLevel: "debug",
  enableTracingAndMetrics: true,
});

export const menuSuggestionFlow = onFlow(
  {
    name: "menuSuggestionFlow",
    inputSchema: z.string(),
    outputSchema: z.string(),
    authPolicy: firebaseAuth((user) => {
      if (!user.email_verified) {
        throw new Error("Verified email required to run flow");
      }
    }),
  },
  async (subject) => {
    const prompt =
      `Suggest an item for the menu of a ${subject} themed restaurant`;

    const llmResponse = await generate({
<<<<<<< HEAD
      model: '' /* TODO: Set a model. */,
=======
      model: geminiPro,
>>>>>>> 9b601e6ec5512854f5e3ebaf0b09d866f90e8933
      prompt: prompt,
      config: {
        temperature: 1,
      },
    });

    return llmResponse.text();
  }
);

