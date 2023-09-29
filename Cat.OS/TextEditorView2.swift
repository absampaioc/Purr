//
//  TextEditorView2.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 26/09/23.
//

import SwiftUI

struct TextEditorView2: View {
    @Binding var textContent2: String
    
    var body: some View {
        NavigationView {
            TextEditor(text: $textContent2)
                .navigationBarItems(trailing: Button("Salvar") {
                    textContent2 = "Escreva uma descrição das features do seu projeto. Fale um pouco sobre sua equipe e sua experiência durante o percurso."
                })
                .padding()
                .navigationBarTitle("Editor de Texto")
        }
    }
}


struct TextEditorView2_Previews: PreviewProvider {
    @State private var previewTextContent2 = "Escreva uma descrição das features do seu projeto. Fale um pouco sobre sua equipe e sua experiência durante o percurso."
    static var previews: some View {
        TextEditorView2(textContent2: .constant(""))
    }
}
