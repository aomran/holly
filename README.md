# Holly - Tenth Generation AI Computer

This Rails app was originally created by Ahmed, Paula and Mike (at HackerYou's Summer Academy). The logic in the model was later extended by using code that Paula and myself (Ahmed) pair programmed using TDD (Test Driven Development). As per Paula's suggestion, I enabled chrome web speech input; so the app now takes in voice input.

The app includes some Javascript to make it a "one-page" app but it also works when Javascript is disabled.

"Holly" is of course a homage/reference to the "peculiar" AI computer from the show "Red Dwarf". Holly used to have an IQ of 6000… but now he can only answer questions in the following format:

`
What is [number] {operation} [number] {operation} [number] ?`


- Example: What is 70 plus 3 multiplied by 10?
- Example: What is 70 divided by 10?

#### Valid Operations:
* plus
* minus
* multiplied by
* divided by

## Text to Speech
Holly is enabled by default to respond with sound. I used the Text-to-speech (TTS) API provided free by http://www.voicerss.org/

The sound can be turned off with a checkbox.