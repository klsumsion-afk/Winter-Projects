//
//  TodoRowView.swift
//  Todo App Practice
//
//  Created by Karigan Sumsion on 3/4/26.
//


import SwiftUI

struct TodoRowView: View {
    @Binding var todo: Todo
    
    var body: some View {
        HStack {
            Button {
                todo.markedComplete.toggle()
            } label: {
                Circle()
                    .strokeBorder(.blue, lineWidth: 1)
                    .background(Circle()
                        .fill(todo.markedComplete ? .blue : .clear)
                    )
                    .frame(width: 20, height: 20)
            }
            
            Text(todo.title)
                .padding(.leading, 5)
            
            Spacer()
        }
        .padding()
        .frame(height: 40)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    @Previewable @State var todo = ToodoSection.dummySections.first!.todos.first!
//    Don't do this. It is very lazy in all the wrong ways.
    TodoRowView(todo: $todo)
}
