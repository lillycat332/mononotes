//
//  hApp.swift
//  h
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI

@main
struct hApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: hDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
