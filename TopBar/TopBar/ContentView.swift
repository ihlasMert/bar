//
//  ContentView.swift
//  TopBar
//
//  Created by ihlas on 27.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab = 0
    
    var body: some View {
        
        VStack{
            
            Picker( selection: $currentTab, label: Text("")){
                
                Image(systemName: "house.fill").tag(0)
                Text("Home").fontWeight(.heavy)
                    .font(.title3)
                Image(systemName: "flame.fill").tag(1)
                Text("Exit").fontWeight(.black)
                    .font(.title3)
                Image(systemName: "paperplane.fill").tag(2)
                Text("Gate").fontWeight(.bold)
                    .font(.title3)
                    .background(.red)
                
            }.pickerStyle(SegmentedPickerStyle())
                .padding(.top, 10)
            Spacer()
            
            if currentTab == 0{
                page1()
            }
            if currentTab == 1{
                page2()
            }
            if currentTab == 2{
                page3()
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
        Text("page1")
}
}
             
struct page2: View{
var body: some View{
Text("page2")
}
}
                     
struct page3: View{
var body: some View{
Text("page3")
    
}
}
