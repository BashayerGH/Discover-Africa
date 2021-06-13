//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct InsetGalleryView: View {
    // Mark - PROPERTIES
    var animal: Animal

    // Mark - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                    ForEach(animal.gallery, id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: ForEach
            }//: Stack
        }//: ScrollView
    }
}
    // Mark - PREVIEW
struct InsetGalleryView_Previews: PreviewProvider {
    static var animal: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animal[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
