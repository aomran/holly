# Holly - Tenth Generation AI Computer

## Who is Holly?
"Holly" is a homage/reference to the "peculiar" AI computer from the show "Red Dwarf". She used to have an IQ of 6000 but it's hard to say what IQ she has now. Holly can be your personal calculator; ask her nicely and she will give you the answer.

## How does this work?
As long as your question starts with "what is" and has the pattern [number] {operation} [number] then she'll take care of it.

`For example: What is 70 divided by 10?`

Also, any number of additional {operation} [number] pairs may be chained on to the end of the above expression.

`For example: What is 70 plus 3 multiplied by 10?`

#### Valid Operations:
* plus
* minus
* multiplied by or times
* divided by or over

## Who built this?
This Ruby on Rails application was built by [Ahmed Omran](http://aomran.com) and [Paula Franzini](http://pfranzini.com) during HackerYou's Summer Academy. The program/logic behind Holly was pair programmed using Test Driven Development (TDD). We used a bit of Javascript to make this a "one-page" app but it still works when Javascript is disabled.

Voice input was trivial to implement because it is provided by the Chrome web browser. Holly is enabled by default to respond with sound, this was accomplished by using the Text-to-speech (TTS) API provided for free by [VoiceRSS](http://www.voicerss.org/).