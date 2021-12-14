//
//  ContentView.swift
//  h
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import SwiftyMonaco

struct ContentView: View {
  @Binding var document: noteDocument
  
  var body: some View {
    NavigationView {
      List {
        Label("hi", systemImage: "doc.text")
      }
      SwiftyMonaco(text: $document.text)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(document: .constant(noteDocument()))
  }
}
