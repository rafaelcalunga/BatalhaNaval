//
//  PosicaoView.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import SwiftUI

struct PosicaoView: View {
    
    let posicao: Posicao
    
    var body: some View {
        
        Text("\(posicao.impressao) \(posicao.valor)")
            .padding()
            .frame(width: .infinity, height: .infinity)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(3)
            .shadow(color: Color(.systemGray6), radius: 6, x: 0.0, y: 0.0)
    }
}

struct PosicaoView_Previews: PreviewProvider {
    static var previews: some View {
        PosicaoView(posicao: Posicao(valor: 4))
    }
}
