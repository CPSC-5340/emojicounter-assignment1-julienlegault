//
//  ContentView.swift
//  CheckoutApp
//
//  Created by Julien on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    
    var emojiItems = [
        "\u{1f60a}",
        "\u{1F574}",
        "\u{1F4DF}",
        "\u{1F58B}",
        "\u{303D}",
        "\u{1F38D}",
        "\u{1F3E9}",
        "\u{1F300}",
        "\u{1F925}",
        "\u{1F7E5}"
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiItems, id: \.self) { icon in
                    ListItem(emoji: icon)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

#Preview {
    ContentView()
        .preferredColorScheme(.light)
}

struct ListItem: View {

    var emoji: String
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text(String("\(emoji)"))
            Text("Counter: \(counter)")
            Spacer()
            Image(systemName: "plus")
                .imageScale(.large)
                .padding(2)
                .border(.tint, width: 2)
                .onTapGesture {
                    counter += 1
                }
            Image(systemName: "minus")
                .imageScale(.large)
                .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                .border(.tint, width: 2)
                .onTapGesture {
                    counter -= 1
                }
        }
        .padding()
        .foregroundStyle(.tint)
    }
}
