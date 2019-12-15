import UIKit
// https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html#ID51

class HTMLElement {
    let name: String
    let text: String
    
    lazy var asHTML: () -> String = { [weak self] in
        guard let this = self else { return "" }
        return "<\(this.name)>\(this.text)</\(this.name)>"
    }
    init(name:String, text:String) {
        self.name = name
        self.text = text
    }
    deinit {
            print("HTML Element \(name) is being deallocated.")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "some sample paragraph body text")

paragraph?.asHTML() // <p>some sample paragraph body text</p>

paragraph = nil

////////////////

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized.")
    }
}

class Apartment {
    let number: Int
    weak var tenant: Person?
    
    init(number: Int) {
        self.number = number
    }
    deinit {
        print("Apartment \(number) is deinitialized")
    }
}

var bob: Person? = Person(name: "Bob")
var apart: Apartment? = Apartment(number: 123)
apart?.tenant = bob

bob = nil
//apart = nil


