//
//  CoverImageView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct CoverImageView: View {
    // Mark - PROPERTIES

    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

    // Mark - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: Foor
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

// Mark - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
