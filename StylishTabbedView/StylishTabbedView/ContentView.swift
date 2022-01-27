//
//  ContentView.swift
//  StylishTabbedView
//
//  Created by ihlas on 27.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
        }
            page1().tabItem{
                VStack{
                Image(systemName: "staroflife.circle")
                    Text("Share").fontWeight(.light)
            }
                Image(systemName: "staroflife.circle")
            }
            page2().tabItem{
                VStack{
                Image(systemName: "ear.and.waveform")
                    Text("Health").fontWeight(.light)
                
            
            }
            
            page3().tabItem{
                VStack{
                Image(systemName: "house.fill")
                    Text("Share").fontWeight(.light)
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

struct page1: View{
    var body: some View{
        Text("hello Page One").fontWeight(.heavy)
        
    }
}
struct page2: View{
    var body: some View{
        Text("hello Page Two").fontWeight(.heavy)
        
    }
}
struct page3: View{
    var body: some View{
        Text("hello Page three").fontWeight(.heavy)
        
    }
}



