//
//  ContentView.swift
//  BatalhaNaval
//
//  Created by Rafael Calunga on 2021-07-01.
//

import SwiftUI

struct BatalhaNavalView: View {
    
    @ObservedObject private var viewModel =  BatalhaNavalViewModel()
    
    private let gridItems: [GridItem] = Array(repeating: .init(.flexible()), count: 7)
    
    var body: some View {
        NavigationView {
            VStack {
                HStack() {
                    Text("💣: \(viewModel.disparos)")
                    Text("⛵️: \(viewModel.acertos)")
                    Text("💥: \(viewModel.erros)")
                }
                
                ScrollView {
                    LazyVGrid(columns: gridItems) {
                        ForEach(viewModel.posicoes) { posicao in
                            PosicaoView(posicao: posicao)
                                .onTapGesture {
                                    viewModel.disparar(na: posicao)
                                }
                        }
                    }
                }
                
                Spacer()
                
                Button(action: viewModel.iniciarJogo) {
                    Text("Novo Jogo")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.all)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Batalha Naval")
        }
    }
}

struct BatalhaNavalView_Previews: PreviewProvider {
    static var previews: some View {
        BatalhaNavalView()
        
        BatalhaNavalView()
            .preferredColorScheme(.dark)
    }
}
