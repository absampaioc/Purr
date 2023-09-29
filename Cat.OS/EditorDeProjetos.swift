//
//  EditorDeProjetos.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 15/09/23.
//

import SwiftUI

struct EditorDeProjetos: View {
    
    @State private var texto: String = ""
    @State var description = false
    @State private var isSheetPresented = false
    @State private var isTextEditor2Presented = false
    @State private var textContent = "Escreva uma breve descrição do seu projeto."
    @State private var textContent2 = "Escreva uma descrição das features do seu projeto. Fale um pouco sobre sua equipe e sua experiência durante o percurso."
    
    
    //  @State private var isPopoverPresented = false
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading){
                
                VStack (alignment: .leading){
                    Text("Carossel")
                        .font(.largeTitle)
                        .bold()
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 180, height: 180)
                                .foregroundColor(Color("little"))
                                .cornerRadius(15)
                            
                            VStack {
                                Button {
                                    isSheetPresented.toggle()
                                } label: {
                                    ZStack{
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.white)
                                            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 5)
                                        Image(systemName: "text.badge.plus")
                                    }
                                }
                                
                                Text("Descrição")
                                    .font(.footnote)
                                    .padding(.top, 5.0)
                            }
                            .sheet(isPresented: $isSheetPresented) {
                                TextEditorView(textContent: $textContent)
                            }
                        }
                        Spacer()
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 180, height: 180)
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
                    }
                    
                }
                .padding()
                
                VStack (alignment: .leading){
                    Text("Projeto")
                        .font(.largeTitle)
                        .bold()
                    
                    HStack(alignment: .center){
                        Spacer()
                        VStack {
                            Button {
                                isTextEditor2Presented.toggle()
                            } label: {
                                ZStack{
                                    Circle()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(.white)
                                        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 5)
                                    Image(systemName: "character.textbox")
                                        .font(.system(size: 20))
                                }
                            }
                            
                            //
                            
                            Text("Texto")
                                .font(.footnote)
                                .padding(.top, 5.0)
                        }
                        .sheet(isPresented: $isTextEditor2Presented) {
                            TextEditorView2(textContent2: $textContent2)
                        }
                        Spacer()
                        VStack {
                            Button {
                                isSheetPresented.toggle()
                            } label: {
                                ZStack{
                                    Circle()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(.white)
                                        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 5)
                                    Image(systemName: "photo")
                                        .font(.system(size: 20))
                                    
                                }
                            }
                            
                            //
                            
                            Text("Imagem")
                                .font(.footnote)
                                .padding(.top, 5.0)
                        }
                        .sheet(isPresented: $isSheetPresented) {
                            TextEditorView(textContent: $textContent)
                        }
                        Spacer()
                    }
                    
                }
                .padding ()
                
            }
            .navigationBarTitle("Editor de Projetos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink {
                        Publicar()
                    } label: {
                        Text("Próximo")
                    }
                }
            }
        }
        
    }
}

struct EditorDeProjetos_Previews: PreviewProvider {
    static var previews: some View {
        EditorDeProjetos()
    }
}
