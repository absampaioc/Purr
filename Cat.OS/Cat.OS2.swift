//
//  ContentView.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 06/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPresentingSheet: Bool = false
    
    var body: some View {
        
            VStack {
                
                HStack{
                    Image("memoji")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .padding()
                    
                    Spacer()
                    
                    Image("cat")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    
                    Spacer()

                    Button {
                        // oque faco agora?
                        // agora apresrnta a nova view
                        
                        // lógica do boto
          isPresentingSheet = true
                    } label: {
                        // como eu sou?
                        Image(systemName: "plus.square")
                            .font(.system(size: 30))
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
                
                ScrollView{
                VStack{
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(width: .infinity, height: 36)
                            .foregroundColor(Color("Color"))
                            .cornerRadius(10)
                        HStack{
                            TextField("Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                            Image(systemName: "magnifyingglass")
                        }
                        .padding()
                    }
                    .padding(.horizontal)

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
                            ZStack{
                                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
                                    .frame(width: 300, height: 300)
                                    .foregroundColor(.purple)
                                    .cornerRadius(14)
                                Text("O Bontê encoraja as pessoas a serem empáticas no seu dia a dia. A experiência contém um céu cheio de estrelas e o usuário, ao fazer uma gentileza a si mesmo ou alguém ao seu redor, ilumina o cada vez mais.")
                                    .frame(width: 250, height: 250)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                            }
                            Image("IMG_5580")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 300, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5574")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5573")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5572")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5571")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                        }
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
                            ZStack{
                                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
                                    .frame(width: 300, height: 300)
                                    .foregroundColor(.purple)
                                    .cornerRadius(14)
                                Text("Aeronaut é um jogo de um só botão no qual jogadores guiam um balão de ar quente por planetas no espaço. Assim como balonistas fazem na vida real, é preciso usar os ventos para manobrar o balão.")
                                    .frame(width: 250, height: 250)
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                            Image("Aeronaut Image - Hugo Lispector 1 1")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 300, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5556")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5557")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5558")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                            Image("IMG_5559")
                                .resizable()
                                .aspectRatio(contentMode: .fill) // Mantém a proporção da imagem e preenche o espaço
                                .frame(width: 140, height: 300) // Tamanho desejado do recorte
                                .cornerRadius(14)
                                .clipped()
                            
                        }
                    }
                }
                
            }
                .sheet(isPresented: $isPresentingSheet) {
                  sheetView()
                    // contruir uma nova view a ser apresentada quando clicar no botão
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
