//
//  fileEnum.swift
//  mono
//
//  Created by Lilly Cham on 15/12/2021.
//

import Foundation


func enumerateDocs() {
  let fileManager = FileManager.default
  do {
    let resourceKeys : [URLResourceKey] = [.creationDateKey, .isDirectoryKey]
    let documentsURL = try? fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    let enumerator = FileManager.default.enumerator(at: documentsURL!,
                                                    includingPropertiesForKeys: resourceKeys,
                                                    options: [.skipsHiddenFiles], errorHandler: { (url, error) -> Bool in
      print("directoryEnumerator error at \(url): ", error)
      return true
    })!
    
    for case let fileURL as URL in enumerator {
      let resourceValues = try fileURL.resourceValues(forKeys: Set(resourceKeys))
      print(fileURL.path, resourceValues.creationDate!, resourceValues.isDirectory!)
      print("hi")
    }
  }
  
  
  catch {
    print(error)
  }
}
