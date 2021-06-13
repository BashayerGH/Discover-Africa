//
//  ContentView.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Mark - PROPERTIES
        let animals: [Animal] = Bundle.main.decode("animals.json")
        let barTitle: String = "AfricaMain".localize()


        // Mark - BODY
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300, alignment: .center)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(
                        destination: AnimalDetailView(animal: animal)) {
                        AnimalListitemView(animal: animal)
                    }//: Link
                }//: ForEach
            } //: List
            .navigationBarTitle(barTitle, displayMode: .large)
        } //: Nav
    }
}
    // Mark - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
