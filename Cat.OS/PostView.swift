//
//  PostView.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 21/09/23.
//

import SwiftUI

struct PostView: View {
    var Icon: String
    var Title: String
    var Time: String
    @State var cardArrayBonte = [CardModel(imageName: "IMG_5580"), CardModel(imageName: "IMG_5574", width: 140, height: 300), CardModel(imageName: "IMG_5573", width: 140), CardModel(imageName: "IMG_5572", width: 140), CardModel(imageName: "IMG_5571", width: 140)]
    var rows: [GridItem] = [GridItem()]
    
    var body: some View {
        VStack{
            HStack(spacing: 20){
                Image(Icon)
                Text(Title)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text(Time)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal){
                LazyHGrid(rows: rows){
                    ForEach(cardArrayBonte, id: \.self) { item in
                        CardView(card: item)
                    }
                }
            }
            .frame(height:300)
            .padding(.leading)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(Icon: "lifestyle", Title: "Bontê", Time: "Há 45 minutos.")
    }
}
