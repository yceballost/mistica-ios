//
//  CatalogHeader.swift
//
//  Made with ❤️ by Novum
//
//  Copyright © Telefonica. All rights reserved.
//

import SwiftUI

struct CatalogHeader: View {
    var body: some View {
        HStack {
            Image("mistica-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 32)

            Spacer()

            if let misticaVersion = misticaVersion {
                Text(misticaVersion)
                    .foregroundColor(Color(UIColor.textPrimary))
            }
        }
        .padding(.top, 8)
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

private extension CatalogHeader {
    var misticaVersion: String? {
        guard let infoPlist = Bundle.main.infoDictionary,
              let version = infoPlist["CFBundleShortVersionString"] as? String else { return nil }
        return "v\(version)"
    }
}

struct CatalogHeader_Previews: PreviewProvider {
    static var previews: some View {
        CatalogHeader()
    }
}
