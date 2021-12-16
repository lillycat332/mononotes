//
//  PreferencesView.swift
//  mono
//
//  Created by Lilly Cham on 16/12/2021.
//

import SwiftUI
import Preferences
import Combine

struct PreferencesView: View {
  let editors = ["Native", "Monaco"]
  @AppStorage("minimapEnabled") var minimapEnabled = true
  @AppStorage("fontSize") var fontSize = 0
  @AppStorage("editorType") var editorType = "Native"
  
  private enum Tabs: Hashable {
    case general, advanced
  }
  var body: some View {
    TabView {
      EditorOptionsView()
        .tabItem {
          Label("Editor", systemImage: "pencil.circle")
        }
        .tag(Tabs.general)
    }
    .padding(20)
    .frame(width: 375, height: 150)
  }
}


struct EditorOptionsView: View {
  let editors = ["Native", "Monaco"]
  @AppStorage("minimapEnabled") var minimapEnabled = true
  @AppStorage("fontSize") var fontSize = 0
  @AppStorage("editorType") var editorType = "Native"
  
  var body: some View {
    Form {
      VStack(alignment: .center) {
      TextField("Font Size", value: $fontSize, formatter: NumberFormatter())
        .padding()
      Picker(selection: $editorType, label: Text("Editor Type")) {
        ForEach(editors, id: \.self) {
          Text($0)
        }
      }
      .padding()
      
      Text("To apply certain preferences, mono needs to restart.")
          .padding(.vertical)
      }
    }
  }
}

struct EditorOptionsView_Previews: PreviewProvider {
  static var previews: some View {
    EditorOptionsView()
  }
}

struct PreferencesView_Previews: PreviewProvider {
  static var previews: some View {
    PreferencesView()
  }
}

