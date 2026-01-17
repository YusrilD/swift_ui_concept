//
//  CoinNetworkCard.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct CoinNetworkCard: View {
    let networkName: String
    let fee: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(networkName).bold()
            Text("Fee: \(fee)")
                .font(.caption)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
    }
}
