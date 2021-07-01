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
        Text("\(posicao.impressao)")
            .font(.title)
            .padding(5)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(3)
            .shadow(color: Color(.systemGray6), radius: 6, x: 0.0, y: 0.0)
    }
}

struct PosicaoView_Previews: PreviewProvider {
    static var previews: some View {
        PosicaoView(posicao: Posicao(valor: 4))
        
        PosicaoView(posicao: Posicao(valor: 4, acerto: true))
        
        PosicaoView(posicao: Posicao(valor: 4, acerto: false))
    }
}
