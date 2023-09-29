//
//  Perfil.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 08/09/23.
//

import SwiftUI

struct Perfil: View {
    var sizeminiaturas: CGFloat = 75.0
    var body: some View {
        ScrollView{
            VStack (spacing: 0) {
                    
                Image("memoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .padding()
                    .clipShape(Circle())
                Text("Rafaela")
                    .font(.title3)
                    .bold()
                Text("@RafaelaFernandes")
                    .font(.body)
                    .foregroundColor(.gray)
                Text("20 Publicações")
                    .padding(.top,15)
            }
            
            Text("Trajetória")
                .fontWeight(.bold)
                .padding(.top,15)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack{
                    CardView(card: CardModel(imageName: "app1", width: 140, height: 140))
                        .shadow(color: Color.gray.opacity(0.3), radius: 8, x: 0, y: 5)
                    CardView(card: CardModel(imageName: "Aeronaut Image - Hugo Lispector 1 1", width: 140, height: 140))
                        .shadow(color: Color.gray.opacity(0.3), radius: 8, x: 0, y: 5)
                    CardView(card: CardModel(imageName: "app3", width: 140, height: 140))
                        .shadow(color: Color.gray.opacity(0.3), radius: 8, x: 0, y: 5)
                }
                .padding(.bottom,15)
            }
            .padding([.leading, .bottom, .trailing],10)
            
 
            Text("Emblemas")
                .fontWeight(.bold)
            
            HStack {
                Image("gatinho1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
            }
            
            HStack {
                Image("gatinho5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho6")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho7")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
                
                Image("gatinho8")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipped()
            }
            .padding(.bottom,0)
            
            Text("Conheça um novo gatinho!")
                .fontWeight(.bold)
                .padding(.top,15)
            
            VStack{
                HStack { // HStack pai
                    Image("paçoca")
                        .frame(width: 60, height: 60)
                    VStack (alignment: .leading) {
                        Text("Paçoca")
                            .fontWeight(.semibold)
                        Text("@paçoca.cat")
                            .font(.caption)
                            .foregroundColor(.gray)
                    } // VStack
                    Spacer()
                    
                    ZStack {
                        Image("balao")
                            .frame(width: 154.19, height: 42)
                            .shadow(color: Color.gray.opacity(0.2), radius: 5, x: 0, y: 5)
                        Text("Disponível pessoalmente pelas manhãs!")
                            .font(.caption2)
                            .multilineTextAlignment(.center)
                            .frame(width: 140, height: 40)
                            .padding(.bottom,5)
                        
                    } // ZStack
                    
                } // HStack pai
                .frame(width: 340)
                
                HStack{ //apps de paçoca
                    Image("app6")
                    VStack { // TODAS MINIATURAS (uso lazy grid?)
                        HStack{ // Miniaturas paçoca
                            Image("app4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: sizeminiaturas, height: sizeminiaturas)
                                .clipped()
                            Image("app3.1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: sizeminiaturas, height: sizeminiaturas)
                                .clipped()
                        } // Miniaturas paçoca
                        HStack{// Miniaturas paçoca2
                            Image("app5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: sizeminiaturas, height: sizeminiaturas)
                                .clipped()
                            Image("app1.1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: sizeminiaturas, height: sizeminiaturas)
                                .clipped()
                        }// Miniaturas paçoca2
                    } // TODAS MINIATURAS
                } // apps de paçoca
                .frame(width: 300, height: 170)
                
            } // VStack geral do paçoca
        }
        .navigationBarTitle("Perfil", displayMode: .inline)
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
