//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct AnimalDetailView: View {
    // Mark - PROPERTIES
    let animal: Animal
    
    // Mark - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled",
                                headingText: "Wilderness in Picture")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                
                // Description
                
                // Map
                
                // Link
                
                
                
            } //: VStack
            .navigationBarTitle("Lear about \(animal.name)", displayMode: .inline)
        }//: Scoll
    }
}

// Mark - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[3])
        }
        .previewDevice("iPhone 11 Pro")
    }
}
