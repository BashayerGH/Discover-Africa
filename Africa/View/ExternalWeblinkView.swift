//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Bashayr on 03/11/1442 AH.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // Mark - PROPERTIES
    let animal: Animal

    // Mark - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("wiki".localize())
                Spacer()

                Group {
                    Image(systemName: "arrow.up.right")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//: HStack
        }//: GroupBox
    }
}
    // Mark - PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {

    static let animal: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        ExternalWeblinkView(animal: animal[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
