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
        ZStack {
            //Top Menu
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
            
            //Side Menu
            HStack(spacing: 0){
                Spacer(minLength: 0)
                VStack {
                    HStack{
                        Spacer(minLength: 0)
                        
                        Button(action: {}, label: {
                            Image(systemName: "xmark")
                                .font(.system(size: 22, weight: .bold))
                                .foregroundColor(.white)
                        })
                    }
                    .padding()
                    .padding(.top,edges!.top)
                    //.edgesIgnoringSafeArea(.all)
                    
                        HStack(spacing: 15) {
                            Image("pic1")
                                .resizable()
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, content: {
                                Text("Tonya")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                Text("Tonya.W@gmail.com")
                                    .fontWeight(.semibold)
                                
                            })
                            .foregroundColor((Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))))
                    
                    }
                        .padding(.horizontal)
                    
                            //Menu Buttons
                    VStack(alignment: .leading, content: {
                        //Need to create workaround for MenuButtons??
                        MenuButtons(systemName: "gear", title: "Settings")
                        //MenuButtons(image: "gear", title: "Settings")
                    })
                    .padding(.all)
                    .padding(.leading,40)
                    
                    Spacer(minLength: 0)
                }
                .frame(width: width - 100)
                .background((Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))))
            }
            .background(Color.black.opacity(0.3))
        }
        //.ignoresSafeArea(.all, edges: .all)
        .edgesIgnoringSafeArea(.all)
    }
}
