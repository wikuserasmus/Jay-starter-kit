import os, openai
from modules.spraak import praat
openai.api_key = os.getenv("OPENAI_API_KEY")
while True:
    vraag = input("Jy: ")
    if vraag.lower() in ["stop", "exit"]: break
    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[{"role": "user", "content": vraag}]
    )
    antwoord = response['choices'][0]['message']['content']
    print(f"Jay: {antwoord}\n")
    praat(antwoord)
