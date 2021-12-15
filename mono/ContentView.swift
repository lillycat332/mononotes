//
//  ContentView.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import SwiftyMonaco
import MarkdownUI

struct ContentView: View {
  @Binding var document: noteDocument

  var body: some View {
    NavigationView {
      List {
        Label("hi", systemImage: "doc.text")
      }
      HSplitView {
        SwiftyMonaco(text: $document.text)
          .syntaxHighlight(.md)
        
        MarkDownView(document: $document)
      }
    }
  }
}

//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView(document: .constant(noteDocument()))
//  }
//}
