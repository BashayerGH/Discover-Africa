//
//  HeadingView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct HeadingView: View {
    // Mark - PROPERTIES
    var headingImage: String
    var headingText: String

    // Mark - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding()
    }
}

    // Mark - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(
            headingImage: "photo.on.rectangle.angled",
            headingText: "Wilderness in Picture")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
