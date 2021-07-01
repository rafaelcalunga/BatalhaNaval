//
//  BatalhaNavalViewModel.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import Foundation

class BatalhaNavalViewModel: ObservableObject {
    
    @Published var posicoes: [Posicao]
    
    @Published var disparos: Int
    
    init() {
        self.posicoes = [Posicao]()
        self.disparos = 35
        self.iniciarJogo()
    }
    
    var acertos: Int {
        self.posicoes.filter({ $0.acerto == true }).count
    }
    
    var erros: Int {
        self.posicoes.filter({ $0.acerto == false }).count
    }
    
    func iniciarJogo() {
        self.posicoes = [Posicao]()
        self.disparos = 35
        
        for _ in 1...49 {
            let random = Int.random(in: 1...99)
            let posicao = Posicao(valor: random, acerto: nil)
            
            self.posicoes.append(posicao)
        }
    }
    
    func disparar(na posicao: Posicao) {
        if let index = posicoes.firstIndex(where: { $0.id == posicao.id }) {
            guard self.posicoes[index].acerto == nil else { return }
            
            self.posicoes[index].acerto = posicao.valor % 5 == 0
            self.disparos -= 1
        }
    }
    
}
