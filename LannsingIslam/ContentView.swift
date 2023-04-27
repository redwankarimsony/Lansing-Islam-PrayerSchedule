//
//  ContentView.swift
//  LannsingIslam
//
//  Created by Redwan Sony on 10/20/22.
//

import SwiftUI
import WebKit


func getCurrentTime() -> String{
    let formatter = DateFormatter()
    formatter.timeStyle = .long
    
    let dateString = formatter.string(from: Date())
    return dateString
}


struct ContentView: View {
    @State private var update = false
    @State private var url = URL(string: "https://masjidal.com/widget/simple/?masjid_id=0aAeyzAj&monthly=v2")
    @State private var current_time = getCurrentTime()
    

    var body: some View {
        VStack {
            Spacer()
            Image("logo").resizable().aspectRatio(contentMode: .fit)
            Spacer()
//            HStack{
//                Text("Local Time: ")
//                Text(self.current_time)
//            }.font(.title)
            
            HStack{
                WebView(url: url!).frame(height: 400)
            }

            
            Button { update.toggle()
                url = URL(string: "https://masjidal.com/widget/simple/?masjid_id=0aAeyzAj&monthly=v2")
                
            } label: {
                Text("Refresh").font(.title)
                
            }
            Spacer()


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
