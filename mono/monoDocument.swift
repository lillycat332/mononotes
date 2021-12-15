//
//  hDocument.swift
//  mono
//
//  Created by Lilly Cham on 14/12/2021.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var markdown: UTType {
        UTType(importedAs: "net.daringfireball.markdown")
    }
}

struct noteDocument: FileDocument {
    var text: String

    init(text: String = "") {
        self.text = text
    }

  static var readableContentTypes: [UTType] { [.markdown] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
