//
//  WKContentView.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import SwiftyMonaco
import MarkdownUI


struct WKContentView: View {
  @Binding var document: noteDocument
  @ObservedObject var userSettings = UserSettings()
  
  var body: some View {
    NavigationView {
      List {
      }
      HSplitView {
        SwiftyMonaco(text: $document.text)
          .syntaxHighlight(.md)
        MarkDownView(document: $document)
      }
      .toolbar {
        Button(action: embolden) {
          Label("Bold", systemImage: "bold")
        }
        
        Button(action: italicize) {
          Label("Italic", systemImage: "italic")
        }
        
        Button(action: uline) {
          Label("Underline", systemImage: "underline")
        }
      }
    }
  }
}

func null() {}
//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView(document: .constant(noteDocument()))
//  }
//}
