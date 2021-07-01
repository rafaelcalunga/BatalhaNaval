//
//  Posicao.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import Foundation

struct Posicao: Identifiable {
    let id = UUID()
    let valor: Int
    var acerto: Bool?
    
    var impressao: String {
        if let acerto = acerto {
            return acerto ? "\(Symbol.boat)" : "\(Symbol.water)"
        }
        return "\(Symbol.none)"
    }
}
