//
//  TextEditorView.swift
//  Cat.OS
//
//  Created by Ana Beatriz Sampaio Cavalcanti on 26/09/23.
//

import SwiftUI

struct TextEditorView: View {
    @Binding var textContent: String
    
    var body: some View {
        NavigationView {
            TextEditor(text: $textContent)
                .navigationBarItems(trailing: Button("Salvar") {
                    textContent = "Escreva uma breve descrição do seu projeto."
                })
                .padding()
                .navigationBarTitle("Editor de Texto")
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    @State private var previewTextContent = "Escreva uma breve descrição do seu projeto."
    static var previews: some View {
        TextEditorView(textContent: .constant(""))
    }
}
