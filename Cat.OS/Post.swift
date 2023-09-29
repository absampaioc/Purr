//
//  Post.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 15/09/23.
//

import SwiftUI

struct Post: View {
    @State private var isImageHidden = false
    @State private var isButtonGreen = false
    @State private var isAlertPresented = false
    var body: some View {
        
        ScrollView {
            VStack (spacing: 0){ // VStack das imagens
                Image("bonte1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity)
                    .clipped()
                    .padding(.bottom,15)
                
                Text("@Redebonte")
                    .padding(.bottom,5)
                Link("Abrir Site", destination: URL(string: "https://www.example.com")!)
                    .foregroundColor(.blue)
                    .padding(.bottom,15)
                
                Image("bonte2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity)
                    .clipped()
                Image("bonte3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity)
                    .clipped()
                    .padding(-5)
                Image("bonte4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity)
                    .clipped()
                  
                ZStack{ // ZSTACK DO QUADRADO TRANSPARENTE
                    Image("desafiobg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                        .padding(.bottom,-40)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 336, height: 372)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.28))
                        .cornerRadius(19)
                    VStack (spacing: 20) { // CONTEUDO DO QUADRADO TRANSPARENTE
                        Text("Tarefa")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.title)
                        Image("gatobonte")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                            .clipped()
                        Text("Submeta uma música que combine com o conceito do aplicativo!")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .font(.body)
                            .multilineTextAlignment(.center)
                        
                        
                        if !isImageHidden {
                            ZStack{ // Botão dentro do quadrado transparente
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 175, height: 70)
                                    .background(Color(red: 0.95, green: 0.95, blue: 0.97))
                                    .cornerRadius(14)
                                Image(systemName: "square.and.arrow.down")
                                    .frame(width: 40, height: 40)
                                    .font(.system(size: 24))
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        isImageHidden.toggle()
                                        isButtonGreen.toggle()
                                    }
                            }
                            
                        } else {
                            Image("musica")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 260, height: 70)
                                .clipped()
                            
                                .onTapGesture {
                                    isImageHidden.toggle()
                                    isButtonGreen.toggle()
                                }
                            
                        }// Botão dentro do quadrado transparente
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(isButtonGreen ? .green : Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .frame(width: 115, height: 31)
                                .background(Color(red: 0.24, green: 0.24, blue: 0.26).opacity(0.6))
                                .cornerRadius(7)
                            
                            Button("Enviar") {
                                if isButtonGreen {
                                    isAlertPresented.toggle()
                                }
                            }
                            .foregroundColor(.white)
                            .alert(isPresented: $isAlertPresented) {
                                Alert(
                                    title: Text("Parabéns!")
                                        .font(.title)
                                        .fontWeight(.bold),
                                    message: Text("Você ganhou um gatinho musical!            Já está no seu perfil")
                                        .font(.title3)
                                        .fontWeight(.regular),
                                    
                                    dismissButton: .default(Text("Ok"))
                                )
                            }
                            
                            
                            .foregroundColor(.white)
                        }
                    } // CONTEUDO DO QUADRADO TRANSPARENTE
                    .frame(width: 280, height: 350)
                } // ZSTACK DO QUADRADO TRANSPARENTE
                
            }// VStack geral
        }// VStack geral

    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
