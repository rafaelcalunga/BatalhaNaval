//
//  PlacarView.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import SwiftUI

struct PlacarView: View {
    
    var disparos: Int
    var acertos: Int
    var barcos: Int
    var erros: Int
    
    var body: some View {
        HStack(spacing: 35) {
            Text("\(Symbol.bomb) \(disparos)")
            Text("\(Symbol.boat) \(acertos) de \(barcos)")
            Text("\(Symbol.water) \(erros)")
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(5)
    }
}

struct PlacarView_Previews: PreviewProvider {
    static var previews: some View {
        PlacarView(disparos: 10, acertos: 2, barcos: 10, erros: 3)
            .previewLayout(.sizeThatFits)
    }
}
