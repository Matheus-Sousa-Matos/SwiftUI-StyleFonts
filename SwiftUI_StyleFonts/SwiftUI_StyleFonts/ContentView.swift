//
//  ContentView.swift
//  SwiftUI_StyleFonts
//
//  Created by Matheus de Sousa Matos on 20/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Form{
            //MARK: - Bold , Italic , Underline
            Section(header: Text("Bold, italic, underline")){
                Text("Hello, world!")
                    .bold()
                    .italic()
                    .underline()
            }
            
            //MARK: - Limit line
            Section(header: Text("Limit line")){
                Text("Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!").lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
            
            //MARK: - Concat and color
            Section(header: Text("Concat")){
                Text("Texto 1 ")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                + Text("Texto 2 ")
                    .foregroundColor(.yellow)
                + Text("Texto 3 ")
                    .foregroundColor(.red)
            }
            
            //MARK: - Upper and lower Cased
            Section(header: Text("Upper and lower Cased")){
                Text("Hello, world!".uppercased())
                Text("Hello, world!".lowercased())
            }
           
            //MARK: - Line aligment
            Section(header: Text("Line(s) alignment")){
                //One line
                Text("Texto 1 ")
                    .frame(
                        maxWidth: .infinity,
                        //alignment: .leading <-
                        //alignment: .trailing ->
                        alignment: .center // | |
                    )
                //Multiline
                Text("TextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTextoTexto").multilineTextAlignment(.center)
            }
            
            
            // //MARK: - Fonts
            Section(header: Text("Fonts")){
                
                Text("Title")
                    .font(.title) // Titulo
                Text("Title")
                    .font(.largeTitle) //TItulo maior
                Text("Title")
                    .font(.headline) //Titulo estilo manchete
                Text("Title")
                    .font(.subheadline) //SubTitulo
                Text("Title")
                    .font(.callout) //Texto explicativo
                Text("Title")
                    .font(.caption) //Texto legenda
                Text("Title")
                    .font(.footnote) //Texto de rodape
                Text("Title")
                    .font(.body) //Texto de padão
            }
            
            Section(header: Text("Custom Font")){
                Text("Hello, world!")
                    .font(.system(
                        size: 15,
                        weight: .regular,
                        design: .rounded
                    ))
            }
                
            
        }
      
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
