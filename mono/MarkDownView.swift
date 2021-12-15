//
//  MarkDownView.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import MarkdownUI

struct MarkDownView: View {
  @Binding var document: noteDocument
  var body: some View {
    VStack {
      Markdown(Document(document.text))
        .padding()
      Spacer()
    }
    .listStyle(SidebarListStyle())
  }
}

//struct MarkDownView_Previews: PreviewProvider {
//  static var previews: some View {
//    MarkDownView()
//  }
//}
