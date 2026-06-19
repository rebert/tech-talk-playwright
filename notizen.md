# How to run the Jupyter Notebook

# Setup

```bash
bash setup.sh
```

# Run

```bash
pipenv
```



## Notes


### End-to-end browser automatation

> **End-to-end (E2E) browser automation** driving a *real* browser through a
> complete user journey - open a page, click, type, navigate, wait for results -
> exactly as a human would, to **test** or **automate** an app from the outside in.


### Playwright

Playwright = a person who writes plays (drama for the theater). Shakespeare, for example, was a playwright.

The interesting bit is the spelling. It's not "play-write" — it's "wright", an old English word meaning a maker or builder of something. You see it in other trade words:

wheelwright — someone who makes wheels
shipwright — someone who builds ships
cartwright — someone who makes carts
playwright — someone who "builds" plays
So a playwright is literally a "play-builder", not a "play-writer" — even though writing is what they do. (The word "wright" comes from the same Old English root as "work" / "wrought".)

Why the name fits the tool - it's a nice double meaning the Microsoft team leaned into:

You author/build automated browser scenarios - scripting out a sequence of actions like scenes in a play.
The browser then performs that script, "acting out" the steps you wrote.
And the logo is the 🎭 theater masks — tying the whole theater metaphor together (which is exactly the logo now on your title slide).

A fun one-liner: "A playwright writes scripts for actors to perform — Playwright lets you write scripts for browsers to perform."


### CDP

CDP = Chrome DevTools Protocol.

It's the low-level protocol that Chromium-based browsers (Chrome, Edge) expose to let external tools inspect and control the browser programmatically. It's the same protocol the browser's own DevTools panel uses under the hood.

How it works: the tool opens a WebSocket connection to the browser and exchanges JSON messages - commands like "navigate to this URL", "click at these coordinates", "return the DOM", plus events the browser pushes back ("page loaded", "network request finished").

it's the reason Playwright is fast:

Selenium uses WebDriver, which talks to the browser over HTTP requests — each command is a separate round-trip, which adds latency.
Playwright / Puppeteer speak CDP (and Playwright's own patched protocols for Firefox/WebKit) over a persistent WebSocket — closer to the browser's metal, so commands and events stream with much less overhead.
That's the "speaks the browser's native protocols (CDP & friends) instead of WebDriver HTTP" line on your slide 1, and the "Protocol" row in the comparison table.

One nuance worth knowing if someone asks: CDP is Chromium-specific. Playwright doesn't rely on CDP for Firefox and WebKit — it ships patched builds of those engines with its own protocol. That's how it gets one consistent API across all three engines, which pure-CDP tools like Puppeteer can't do as cleanly.


### Moving of the original pupeteer team

"built by the original Puppeteer team after moving to Microsoft" — and if someone asks "why," the solid answer is "to build true cross-browser automation, which is hard to do from inside the Chrome team."


### Fixtures

Fixtures are pytest's mechanism for providing the setup (and teardown) a test needs, without the test having to do that work itself.

A fixture is a function that prepares something and hands it to your test. Your test just declares what it wants by naming it as a parameter, and pytest supplies it automatically.

A fixture is reusable, auto-injected setup+teardown; pytest-playwright's biggest gift is the page fixture, which hands every test a ready-to-drive browser page for free.

### WebM

Container format - a .webm file is a wrapper holding a video stream + audio stream together (a "container," like .mp4 or .mkv are). WebM is actually a subset of the Matroska (.mkv) container, restricted to specific codecs.

Codecs inside it:
Video: VP8, VP9, or AV1
Audio: Vorbis or Opus
Open & royalty-free — sponsored by Google, with no licensing fees. That's the main contrast with .mp4/H.264, which historically carried patent-licensing concerns. Because of that, WebM is natively supported by browsers (Chrome, Firefox, Edge) and built into the open web (it's the format <video> and WebRTC lean on).


 It was built by web developer Mike Kania as a live status monitor for whether CERN's experiments have ended the world — which, given that the LHC 
 sits under the Franco-Swiss border (Teilchenbeschleuniger)


