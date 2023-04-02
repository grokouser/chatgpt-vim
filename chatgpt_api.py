import openai
import os

def generate_response(api_key, prompt, num_choices=1):
    openai.api_key = api_key

    response = openai.Completion.create(
        engine="text-davinci-002",
        prompt=prompt,
        max_tokens=100,
        n=num_choices,  # Add this line to support multiple choices
        stop=None,
        temperature=0.7,
    )

    return response
