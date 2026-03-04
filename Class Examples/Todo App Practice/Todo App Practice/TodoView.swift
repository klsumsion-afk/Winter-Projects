//
//  ContentView.swift
//  Todo App Practice
//
//  Created by Karigan Sumsion on 3/4/26.
//

import SwiftUI

struct TodoView: View {
    @State var toodoSections = ToodoSection.dummySections
    
    var body: some View {
        VStack {
            HStack {
                Text("Todos").font(.title)
                    .padding(.leading, 25)
                
                Spacer()
            }
            List {
                ForEach($toodoSections) { $section in
                    Section(section.sectionTitle) {
                        ForEach($section.todos) { $todo in
                            TodoRowView(todo: $todo)
                        }
                    }
                }
            }
            .listStyle(.inset)
            
            Spacer()
        }
        .padding()
    }
}



#Preview {
    TodoView()
}
