//
//  ContentView.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 06/09/23.
//

import SwiftUI

struct ContentView: View {
    
    // @State var isPresentingSheet: Bool = false
    var body: some View {
        NavigationView{
            MuralView()
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        NavigationLink{
                            Perfil()
                        } label: {
                            Image("memoji")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(.bottom, 15.0)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink {
                            EditorDeProjetos()
                        } label: {
                            Image(systemName: "plus.square")
                                .font(.system(size: 25))
                                .foregroundColor(.blue)
                                .padding(.bottom, 15.0)
                        }
                    }
                    ToolbarItem(placement: .principal){
                        Image("cat")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 36, height: 36)
                    }
                    
                    
                    
                }
                .navigationBarTitle("", displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


