//
//  Publicar.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 26/09/23.
//

import SwiftUI

struct Publicar: View {
    @State private var selectedCategory = 0
    @State private var selectedActivity = 0
    @State private var selectedChallenge = 0
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Capa do Projeto")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(Color("little"))
                        .cornerRadius(15)
                    
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 50.0, height: 50.0)
                                .foregroundColor(Color.white)
                                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 5)
                            
                            Image(systemName: "photo")
                                .foregroundColor(.blue)
                        }
                        Text("Imagem")
                            .font(.footnote)
                            .padding(.top, 5.0)
                    }
                    
                }
                VStack {
                    HStack{
                        Text("Título")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    TextField("Nome do seu Projeto", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                   
                }
                
                VStack {
                    HStack{
                        Text("Marcar colaboradores")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    TextField("ex: @VivianeFerreira", text: .constant(""))
                       
                }
                VStack {
                    HStack{
                        Text("Categoria")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    Picker(selection: $selectedCategory, label: Text("Selecione")) {
                        Text("Selecione").tag(0).foregroundColor(.gray)
                        Text("Ação").tag(1)
                        Text("Estilo de Vida").tag(2)
                        Text("Quebra-cabeça").tag(3)
                        Text("RPG").tag(4)
                        Text("Saúde").tag(5)
                        Text("Simulação").tag(6)
                    }
        
                }
                
                VStack {
                    HStack{
                        Text("Challenge")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    Picker(selection: $selectedChallenge, label: Text("Selecione")) {
                        Text("Selecione").tag(0).foregroundColor(.gray)
                        Text("Design").tag(1)
                        Text("Programação").tag(2)
                        Text("Inovação").tag(3)
                        Text("Marketing").tag(4)
                    }
                }
                
                VStack {
                    HStack{
                        Text("Tarefa")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    Picker(selection: $selectedActivity, label: Text("Selecione")) {
                        Text("Selecione").tag(0).foregroundColor(.gray)
                        Text("Compartilhe com um amigo que acharia nossa solução interessante").tag(1)
                        Text("Compartilhe um post do nosso instagram em seu story.").tag(2)
                        Text("Diga uma influencer que você acha que gostaria de usar o aplicativo").tag(3)
                        Text("Indique uma loja que combinaria com nosso público").tag(4)
                        Text("Diga uma funcionalidade que se encaixaria no nosso aplicativo").tag(5)
                        Text("Em que situações você imaginaria esse aplicativo sendo usado?").tag(6)
                        Text("Que tipo de pessoas ou estabelecimentos você imaginaria usando nossa solução?").tag(7)
                    }
        
                }
            }
            .padding()
        }
        .toolbar {
        ToolbarItem(placement: .navigationBarTrailing){
            NavigationLink {
                ContentView()
                
            } label: {
                Text("Publicar")
            }
     
        }
    }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
    

struct Publicar_Previews: PreviewProvider {
    static var previews: some View {
        Publicar()
    }
}
