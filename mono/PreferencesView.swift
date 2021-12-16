//
//  PreferencesView.swift
//  mono
//
//  Created by Lilly Cham on 16/12/2021.
//

import SwiftUI
import Preferences

struct PreferencesView: View {
  @ObservedObject var userSettings = UserSettings()
  
    var body: some View {
      Preferences.Container {
        
      }
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
