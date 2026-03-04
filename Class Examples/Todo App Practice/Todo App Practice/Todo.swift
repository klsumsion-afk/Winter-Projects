//
//  Todo.swift
//  Todo App Practice
//
//  Created by Karigan Sumsion on 3/4/26.
//

import Foundation

struct Todo: Identifiable {
    var id: UUID = UUID()
    var markedComplete: Bool
    var title: String
}

struct ToodoSection: Identifiable {
    var id = UUID()
    var sectionTitle: String
    var todos: [Todo]
}

extension ToodoSection {
    static var dummySections: [ToodoSection] = [
        ToodoSection(sectionTitle: "B's", todos: [
            Todo(markedComplete: false, title: "Buy dog food"),
            Todo(markedComplete: false, title: "Bother sister"),
            Todo(markedComplete: false, title: "Burn the world"),
            Todo(markedComplete: false, title: "BATMAN!")])
    ]
}

