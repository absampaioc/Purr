//
//  CardView.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 08/09/23.
//

import SwiftUI

struct CardModel: Hashable{
    var imageName: String
    var width: CGFloat = 300
    var height: CGFloat = 300
}

struct CardView: View {
    @State var showPost = false
    var card: CardModel
    
    var body: some View {
        Button{
            showPost.toggle()
        } label: {
            Image(card.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: card.width, height: card.height)
                .cornerRadius(14)
                .clipped()
        }
        .sheet(isPresented: $showPost){
            Post()
        }
    }
        
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(card: CardModel(imageName: "Aeronaut Image - Hugo Lispector 1 1"))
            
            CardView(card: CardModel(imageName: "Aeronaut Image - Hugo Lispector 1 1", width: 140))
            
            CardView(card: CardModel(imageName: "Aeronaut Image - Hugo Lispector 1 1", height: 140))
        }
    }
}


