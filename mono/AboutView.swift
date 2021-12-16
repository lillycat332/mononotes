//
//  AboutView.swift
//  mono
//
//  Created by Lilly Cham on 16/12/2021.
//

import SwiftUI

struct AboutView: View {
  var body: some View {
    HStack {
      Spacer()
      HStack {
        VStack(alignment: .leading) {
          Image("MonoIcon")
            .padding()
        }
        .padding()
        VStack(alignment: .leading, spacing: 10) {
          Text("mono editor")
            .font(.largeTitle)
          Text("Version 1.0.0 (ALPHA)")
            .font(.footnote)
            .foregroundColor(.secondary)
          Text("\(Image(systemName: "c.circle")) 2021, Lilly Cham")
            .font(.footnote)
            .foregroundColor(.secondary)
          
          HStack(alignment: .center) {
            Link("Github", destination: URL(string: "https://github.com/lillycat332/mononotes")!)
              .padding(.horizontal)
            Link("Website", destination: URL(string: "https://7daysfree.xyz")!)
              .buttonStyle(LinkButtonStyle())
              .padding(.horizontal)
          }
          .padding(.vertical)
        }
        Spacer()
      }
      Spacer()
    }
    .frame(width: 400.0, height: 200.0)
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      AboutView()
    }
  }
}
