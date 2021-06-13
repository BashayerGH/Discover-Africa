//
//  AnimalListitemView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct AnimalListitemView: View {
    // Mark - PROPERTIES
    let animal: Animal
    
    // Mark - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12.0)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VStack
        } //: HStack
    }
}


// Mark - PREVIEW
struct AnimalListitemView_Previews: PreviewProvider {
    
    static var animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalListitemView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
