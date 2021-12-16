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
  private enum Tabs: Hashable {
    case general, advanced
  }
  var body: some View {
    TabView {
      EditorOptionsView()
        .tabItem {
          Label("General", systemImage: "pencil.circle")
        }
        .tag(Tabs.general)
      
      MonacoOptionsView()
        .tabItem {
          Label("Monaco", systemImage: "chevron.left.forwardslash.chevron.right")
        }
        .tag(Tabs.general)
      
      NativeOptionsView()
        .tabItem {
          Label("Native", systemImage: "swift")
        }
        .tag(Tabs.general)
    }
    .padding(20)
    .frame(width: 375, height: 150)
  }
}


struct EditorOptionsView: View {
  let editors = ["Native", "Monaco"]
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
      }
    }
  }
}

struct MonacoOptionsView: View {
  @AppStorage("minimapEnabled") var minimapEnabled = true
  
  var body: some View {
    Form {
      Toggle("Minimap", isOn:$minimapEnabled)
      Text("To apply these preferences, mono needs to restart.")
        .padding(.vertical)
    }
  }
}

struct NativeOptionsView: View {
  @AppStorage("minimapEnabled") var minimapEnabled = true
  
  var body: some View {
    Form {
      Text("Nothing Yet!")
        .padding(.vertical)
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

