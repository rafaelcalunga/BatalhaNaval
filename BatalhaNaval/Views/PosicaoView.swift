//
//  PosicaoView.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import SwiftUI

struct PosicaoView: View {
    
    let posicao: Posicao
    
    var backgroundColor: Color {
        if let acerto = posicao.acerto {
            return acerto ? Color.ligthRed : Color.ligthBlue
        }
        return Color.ligthGray
    }
    
    var body: some View {
        Text("\(posicao.impressao)")
            .font(.title)
            .padding(5)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
            .cornerRadius(3)
    }
}

struct PosicaoView_Previews: PreviewProvider {
    static var previews: some View {
        PosicaoView(posicao: Posicao(valor: 4))
            .previewLayout(.fixed(width: 100, height: 100))
        
        PosicaoView(posicao: Posicao(valor: 4, acerto: true))
            .previewLayout(.fixed(width: 100, height: 100))
        
        PosicaoView(posicao: Posicao(valor: 4, acerto: false))
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
