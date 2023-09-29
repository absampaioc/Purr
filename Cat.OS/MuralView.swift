//
//  Principal.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 21/09/23.
//

import SwiftUI

struct MuralView: View {
    
    @State private var barraBusca = ""
    @State private var isSearching = false
    @State private var lastOffset: CGFloat = 0
    @State private var selectedCategory = 0
    @State private var selectedChallenge = 0
    @State private var showCategoryMenu = false
    @State private var showChallengeMenu = false
  
    
    var body: some View {
        
        ScrollView{
            HStack{
                HStack(spacing: 10) {
                    Button(action: {
                        showCategoryMenu.toggle() // Mostrar/ocultar o menu de categoria
                    }) {
                        Text("Categoria")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    if showCategoryMenu {
                        Menu {
                            Button(action: {
                                selectedCategory = 0 // Limpar a seleção de categoria
                                showCategoryMenu.toggle() // Fechar o menu de categoria após a seleção
                            }) {
                                Label("Todos", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 1 
                                showCategoryMenu.toggle()
                            }) {
                                Label("Ação", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 2
                                showCategoryMenu.toggle()
                            }) {
                                Label("Estilo de Vida", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 3
                                showCategoryMenu.toggle()
                            }) {
                                Label("Quebra Cabeça", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 4
                                showCategoryMenu.toggle()
                            }) {
                                Label("RPG", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 5
                                showCategoryMenu.toggle()
                            }) {
                                Label("Saúde", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 6
                                showCategoryMenu.toggle()
                            }) {
                                Label("Simulação", systemImage: "circle.fill")
                            }
                            // Repita para outras categorias
                        } label: {
                            Image(systemName: "arrow.down.circle.fill") // Ícone para mostrar que o menu está disponível
                        }
                    }
                }
                
                HStack(spacing: 10) {
                    Button(action: {
                        showChallengeMenu.toggle() // Mostrar/ocultar o menu de categoria
                    }) {
                        Text("Challenge")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                    if showChallengeMenu {
                        Menu {
                            Button(action: {
                                selectedCategory = 0
                                showCategoryMenu.toggle()
                            }) {
                                Label("Todos", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 1
                                showCategoryMenu.toggle()
                            }) {
                                Label("Design", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 1
                                showCategoryMenu.toggle()
                            }) {
                                Label("Inovação", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 1
                                showCategoryMenu.toggle()
                            }) {
                                Label("Programação", systemImage: "circle.fill")
                            }
                            Button(action: {
                                selectedCategory = 1
                                showCategoryMenu.toggle()
                            }) {
                                Label("Marketing", systemImage: "circle.fill")
                            }
                        } label: {
                            Image(systemName: "arrow.down.circle.fill") // Ícone para mostrar que o menu está disponível
                        }
                    }
                }

                
            }
            
            VStack{
                HStack(spacing: 20){
                    Image("lifestyle")
                    Text("Bontê")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Text("Há 45 minutos.")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding()
                
                ScrollView(.horizontal){
                    HStack{
                        CardView(card: .init(imageName: "IMG_5580"))
                        IntroPost(card: .init(texto: "O Bontê encoraja as pessoas a serem empáticas no seu dia a dia. A experiência contém um céu cheio de estrelas e o usuário, ao fazer uma gentileza a si mesmo ou alguém ao seu redor, ilumina o cada vez mais.", gradientColor1: Color.purple, gradientColor2: Color.blue))
                        CardView(card: .init(imageName: "IMG_5574", width: 140))
                        CardView(card: .init(imageName: "IMG_5573", width: 140))
                        CardView(card: .init(imageName: "IMG_5572", width: 140))
                        CardView(card: .init(imageName: "IMG_5571", width: 140))
                    }
                }
                    .padding(.leading)
                }
                
                HStack(spacing: 20){
                    Image("game")
                    Text("Aeronaut")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Text("Há 50 minutos.")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding()
                
                ScrollView(.horizontal){
                    HStack{
                        CardView(card: CardModel(imageName: "Aeronaut Image - Hugo Lispector 1 1"))
                        IntroPost(card: .init(texto: "Aeronaut é um jogo de um só botão no qual jogadores guiam um balão de ar quente por planetas no espaço. Assim como balonistas fazem na vida real, é preciso usar os ventos para manobrar o balão.", gradientColor1: Color.orange, gradientColor2: Color.purple))
                        CardView(card: .init(imageName: "IMG_5556", width: 140))
                        CardView(card: .init(imageName: "IMG_5556", width: 140))
                        CardView(card: .init(imageName: "IMG_5558", width: 140))
                        CardView(card: .init(imageName: "IMG_5559", width: 140))
                        
                    }
                    .padding(.leading)
                }
            }
            .searchable(text: $barraBusca, prompt: "Buscar")
            //         .sheet(isPresented: $isPresentingSheet) {
            //               sheetView()
            // contruir uma nova view a ser apresentada quando clicar no botão
        }
    }
struct MuralView_Previews: PreviewProvider {
    static var previews: some View {
        MuralView()
    }
}
