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
        
        for i in 1...21 {
            self.posicoes.append(Posicao.init(valor: i, acerto: nil))
        }
    }
    
    func disparar(na posicao: Posicao) {
        if let index = posicoes.firstIndex(where: { $0.id == posicao.id }) {
            self.posicoes[index].acerto = posicao.valor % 5 == 0
        }
        
        self.disparos -= 1
    }
    
}
