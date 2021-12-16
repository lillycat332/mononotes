//
//  hApp.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import Preferences
import PreferencePanes

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
  @AppStorage("minimapEnabled") var minimapEnabled = true
  @AppStorage("fontSize") var fontSize = 0
  @AppStorage("editorType") var editorType = "Native"
  
  var body: some Scene {
    DocumentGroup(newDocument: noteDocument()) { file in
      if editorType != "Monaco" {
        LightContentView(document: file.$document)
      }
      else {
        WKContentView(document: file.$document)
      }
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
      
      CommandGroup(replacing: .appInfo) {
        NavigationLink(destination: AboutView()) {
          Label("About mono", systemImage: "command")
        }
      }
    }
    
    Settings {
      PreferencesView()
    }
  }
}

public func embolden() {
  
}

public func italicize() {
  
}

public func uline() {
  
}
