//
//  CoinCard.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct CoinCard: View {
    let symbol: String
    let price: String

    var body: some View {
        HStack {
            Text(symbol).bold()
            Spacer()
            Text(price)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(12)
    }
}

#Preview {
    CoinCard(symbol: "BTC", price: "$4800,0")
}
