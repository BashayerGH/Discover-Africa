//
//  InsetFactView.swift
//  Africa
//
//  Created by Bashayr on 03/11/1442 AH.
//

import SwiftUI

struct InsetFactView: View {
    // Mark - PROPERTIES
    
    let animal: Animal
    // Mark - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealWidth: 168, maxHeight: 180)
        }//:GroupBox
    }
}
    // Mark - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
