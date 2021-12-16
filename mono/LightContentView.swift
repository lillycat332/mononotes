//
//  LightContentView.swift
//  mono
//
//  Created by Lilly Cham on 16/12/2021.
//

import SwiftUI
import MarkdownUI

struct LightContentView: View {
  @Binding var document: noteDocument
  @AppStorage("fontSize") var fontSize = 0.0
  
  var body: some View {
    NavigationView {
      List {
      }
      HSplitView {
        TextEditor(text: $document.text)
          .padding([.leading], 20.0)
          .font(.system(size: fontSize, design: .monospaced))
          .disableAutocorrection(true)
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
struct LightContentView_Previews: PreviewProvider {
  static var previews: some View {
    LightContentView(document: .constant(noteDocument()))
  }
}
