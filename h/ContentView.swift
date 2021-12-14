//
//  ContentView.swift
//  h
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: hDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(hDocument()))
    }
}
