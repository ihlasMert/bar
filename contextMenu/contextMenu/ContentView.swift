//
//  ContentView.swift
//  contextMenu
//
//  Created by ihlas on 27.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
        Image("bbc").resizable().frame(height: 300)
            .cornerRadius(20).padding()
            .contextMenu{
                VStack{
                   
                    Button(action: {
                        print("send")
                        
                        
                    }){
                        HStack{
                            Image(systemName: "folder.fill")
                            Text("Mustafa hocama gönder")
                        }
                    }
                    
                    Button(action:{
                        print("Send to Mustafa")
                        
                        
                    }){
                        HStack{
                            Image(systemName: "square.and.arrow.up.fill")
                            Text("Mustafa abime gönder")
                        }
                    }
                    }
                
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
