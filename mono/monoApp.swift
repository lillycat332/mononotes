//
//  hApp.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI


@main
struct monoApp: App {
  var body: some Scene {
    DocumentGroup(newDocument: noteDocument()) { file in
      ContentView(document: file.$document)
    }.commands {
      CommandGroup(before: CommandGroupPlacement.textFormatting) {
        Button(action: embolden) {
          Label("Bold", systemImage: "bold")
        }
        .keyboardShortcut("b", modifiers: .command)
        
        Button(action: italicize) {
          Label("Italic", systemImage: "italic")
        }
        .keyboardShortcut("i", modifiers: .command)
        
        Button(action: uline) {
          Label("Underline", systemImage: "underline")
        }
        .keyboardShortcut("u", modifiers: .command)
      }
    }
  }
}

public func embolden() {
  
}

public func italicize() {
  
}

public func uline() {
  
}

