//
//  IntroPost.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 21/09/23.
//
import SwiftUI

struct IntroModel{
    var texto: String
    var gradientColor1: Color
    var gradientColor2: Color
}

struct IntroPost: View {
    @State var showPost = false
    var card: IntroModel
    
    
    var body: some View {
        Button{
            showPost.toggle()
        } label: {
            HStack{
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [card.gradientColor1, card.gradientColor2]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
                        .frame(width: 300, height: 300)
                        .foregroundColor(.purple)
                        .cornerRadius(14)
                    Text(card.texto)
                        .frame(width: 250, height: 250)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
        .sheet(isPresented: $showPost){
            Post()
        }
    }
    
}

struct IntroPost_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroPost(card: .init(texto: "O Bontê encoraja as pessoas a serem empáticas no seu dia a dia. A experiência contém um céu cheio de estrelas e o usuário, ao fazer uma gentileza a si mesmo ou alguém ao seu redor, ilumina o cada vez mais.", gradientColor1: Color.purple, gradientColor2: Color.blue))
        }
    }
}
