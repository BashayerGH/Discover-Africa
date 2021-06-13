//
//  Localizations.swift
//  Africa
//
//  Created by Bashayr on 02/11/1442 AH.
//

import Foundation

extension String {
    func localize() -> String {
        NSLocalizedString(self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self)
    }
}

