//
//  hApp.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI

@main
struct monoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: noteDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
