//
//  ContentView.swift
//  SideBarPopUpMenu
//
//  Created by George Davis IV on 9/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var width = UIScreen.main.bounds.width
    
    var body: some View{
        VStack{
            ZStack {
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "square.stack.3d.up")
                            .font(.system(size: 22))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    })
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image("pic1")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                    })
                }
                
                Text("Home")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            .padding()
            //.padding(.top,edges!.top)
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 5, x: 0, y: 5)
            
            Spacer(minLength: 0)
            
            VStack{
                
            }
        }
        //.ignoresSafeArea(.all, edges: .all)
    }
}
