//
//  IOS_COURSESTests.swift
//  IOS-COURSESTests
//
//  Created by Quentin Thomas on 07/01/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import XCTest






class IOS_COURSESTests: XCTestCase {

    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }

    final class ImageStore {
        typealias _ImageDictionary = [String: CGImage]
        fileprivate var images: _ImageDictionary = [:]

        fileprivate static var scale = 2
        
        static var shared = ImageStore()
        
        func image(name: String) -> Image {
            let index = _guaranteeImage(name: name)
            
            return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
        }

        static func loadImage(name: String) -> CGImage {
            guard
                let url = Bundle.main.url(forResource: name, withExtension: "png"),
                let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
                let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
            else {
                fatalError("Couldn't load image \(name).jpg from main bundle.")
            }
            return image
        }
        
        fileprivate func _guaranteeImage(name: String) -> _ImageDictionary.Index {
            if let index = images.index(forKey: name) { return index }
            
            images[name] = ImageStore.loadImage(name: name)
            return images.index(forKey: name)!
        }
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let filename = "a"

        file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
            XCTAssertTrue(true, "Couldn't find a in main bundle.")
        }
      

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
