# mononotes
Mononotes is a markdown notetaking/editor app for macOS

<img width="1012" alt="Screenshot 2021-12-15 at 10 34 56" src="https://user-images.githubusercontent.com/54189319/146170859-835abc01-1674-429a-a921-e1c05f5c4d7b.png">

## Advantages
- It isn't Electron (though it does embed monaco editor)
- It's less than 100 MB, and has a smaller memory footprint than similar Electron apps
- It isn't closed source
- It's SwiftUI aside from the monaco editor, so it feels native
- If you don't like webshit ( I don't ) you can choose to use a native editor instead for better performance.

## Disadvantages
- The code is a mess
- I made this in like an hour

## Why
- Because a certain note taking app went closed source
- Because I can

## TODO
- Proper organisation file view in the sidebar
- ~~Perhaps an option to disable the monaco editor in place of a lesser featured, SwiftUI only editor?~~ DONE

## KNOWN ISSUES
- Sometimes the markdown parser dies for no apparent reason (mostly with the native editor, perhaps an encoding thing?)
- The preferences UI isn't very good
- The app sucks

