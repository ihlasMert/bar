//
//  ContentView.swift
//  ParsinJSPN
//
//  Created by ihlas on 27.01.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @ObservedObject var getData = datas()
    var body: some View {
        NavigationView{
            List(getData.jsonData) {i in
                
                ListRow(name: i.avatar_url, url: i.login)
            }.navigationBarTitle("JSON PARS")
                
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// I am going add

class datas: ObservableObject{
    @Published var jsonData = [datatype]()
    init(){
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: "https://api.github.com/users/hadley/orgs")!) { (data, _, _) in
            do{
                let fetch = try JSONDecoder().decode([datatype].self, from: data!)
                DispatchQueue.main.async {
                    self.jsonData = fetch
                }
            }catch{
                print(error.localizedDescription)
            }
            
        }.resume()
    }

}
struct datatype: Identifiable, Decodable{
    
    var id: Int
    var login: String
    var node_id: String
    var avatar_url: String
    // I am going d
}

struct ListRow: View{
    
    
    var name: String
    var url: String
    
    var body: some View{
        HStack{
            
            AnimatedImage(url: URL(string: url)).resizable().frame(width: 60, height: 60).clipShape(Circle()).shadow(radius: 20)
            Text(name).fontWeight(.heavy).padding(.leading, 10)
        }
    }
    
}
