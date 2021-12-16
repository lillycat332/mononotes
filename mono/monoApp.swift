//
//  hApp.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI

class UserSettings: ObservableObject {
  init() {
    minimapEnabled = UserDefaults.standard.bool(forKey: "minimapEnabled")
  }
  
  @Published var minimapEnabled: Bool {
    didSet {
      UserDefaults.standard.set(minimapEnabled, forKey: "minimapEnabled")
    }
  }
}

@main
struct monoApp: App {
  @ObservedObject var userSettings = UserSettings()
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
      CommandGroup(after: CommandGroupPlacement.windowArrangement) {
        Toggle(isOn: $userSettings.minimapEnabled) {
          Label("Toggle Minimap", systemImage: "map")
        }
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
