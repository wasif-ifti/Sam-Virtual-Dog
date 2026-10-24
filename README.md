# 🐶 Sam the Virtual Dog

A virtual pet you can play with in your browser. Sam is a Border Collie puppy: smart, expressive, and a little dramatic if you ignore him for too long. There's no winning and no ending. Sam is just your dog now.

**▶️ [Play with Sam](https://www.cs.drexel.edu/~wi27/pet.html)** · **[Documentation](documentation.html)**

## How it works

Sam is a **finite state machine** with 12 moods:

> Happy · Hungry · Sleepy · Playful · Sad · Angry · Sick · Excited · Bored · Loved · Scared · Energetic

You can interact with him in 7 ways: **Feed, Play, Pet, Sleep, Medicine, Scold, Walk**. Each action moves him to a new mood depending on how he's feeling right now. Feeding a hungry Sam makes him happy, and scolding him might make him scared or angry.

Each mood also has its own timer. Leave Sam alone and his mood drifts on its own: ignore a happy Sam and he gets bored, stay bored too long and he gets angry, and leave him hungry and he gets sick until you give him medicine. Some moods settle down by themselves too, like a nap leaving him refreshed. Every mood has its own picture and message.

## Files

| File | What it is |
|---|---|
| `pet.t` | The source code: states, transitions, and the timer logic |
| `index.html` | The compiled, playable version |
| `documentation.html` | Full state and transition tables plus Sam's backstory |
| `*.jpg` | One image per mood |

## Built with

Written in the course's teaching language for CS 164 (Introduction to Computer Science) at Drexel University, compiled to run in the browser.
