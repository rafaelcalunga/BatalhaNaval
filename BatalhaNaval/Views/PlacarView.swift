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
    var erros: Int
    
    var body: some View {
        HStack(spacing: 30) {
            Text("💣: \(disparos)")
            Text("⛵️: \(acertos)")
            Text("💦: \(erros)")
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(20)
    }
}

struct PlacarView_Previews: PreviewProvider {
    static var previews: some View {
        PlacarView(disparos: 10, acertos: 2, erros: 3)
    }
}
