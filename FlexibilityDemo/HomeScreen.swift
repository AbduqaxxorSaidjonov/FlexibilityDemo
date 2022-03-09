//
//  HomeScreen.swift
//  FlexibilityDemo
//
//  Created by Abduqaxxor on 6/3/22.
//

import SwiftUI

extension UIScreen{
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct HomeScreen: View {
    
    @State var search = ""
    @State var number = "+998"
    
    var body: some View {

        NavigationView{
            ScrollView(.vertical){
                // Click logo
                    HStack{
                Image("click").resizable()
                .frame(width: UIScreen.width/5,height: UIScreen.width/5)
                .cornerRadius(20)
                .padding(.leading).padding(.top).padding(.bottom)
                        VStack(alignment: .leading){
                            Text("CLICK").fontWeight(.bold)
                                .font(.system(size: 40,design: Font.Design.serif))
                    Text("Evolution")
                        }
                        .foregroundColor(.white)
                        Spacer()
                    }
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.gray))
                    .padding(10)
                
                // credit card
                TabView{
                Image("creditCard")
                    .resizable()
                    .cornerRadius(30)
                    ZStack{
                    RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 1)
                        .foregroundColor(.blue)
                        Button(action: {
                            
                        }, label: {
                            VStack{
                            Image(systemName: "plus.circle")
                                .font(.system(size: 50))
                                .foregroundColor(.blue)
                                Text("Add Card")
                                    .font(.system(size: 20, weight: Font.Weight.medium, design: Font.Design.serif))
                                    .foregroundColor(.blue)
                            }
                        })
                    }
                       
                }
                .frame(maxWidth: .infinity).frame(height: 250)
                .padding(.leading,10).padding(.trailing,10)
                .tabViewStyle(PageTabViewStyle())
                
                // menu scanner
                HStack{
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "barcode.viewfinder")
                                .font(.system(size: 30))
                            Text("CLICK PASS")
                        }.padding(10)
                            .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.gray))
                    })
                   
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "qrcode.viewfinder")
                                .font(.system(size: 30))
                            Text("QR-scanner")
                        }
                        .padding(10)
                            .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.gray))
                    })
                }
                .padding(.leading,10).padding(.trailing,10)
                
                //menu payment
                VStack(alignment: .leading){
                    Text("Payment for mobile communication")
                    .fontWeight(.bold)
                    HStack{
                        HStack{
                            TextField("",text: $number).padding(.leading)
                            Image(systemName: "person.circle.fill")
                                .padding(.trailing)
                        }
                            .frame(height: 40)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.gray))
                        Button(action: {
                            
                        }, label: {
                            Text("Payment").fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(height: 40)
                                .frame(maxWidth: UIScreen.width/3)
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.gray))
                        })
                    }
                }
                .padding(.leading,10).padding(.trailing,10)
                
                // nearlier shops
                VStack(alignment: .leading){
                    HStack{
                        Text("Near").font(.system(size: 17))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Text("Show more")
                                .padding(.top,2).padding(.bottom,2)
                                .padding(.leading,10).padding(.trailing,10)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                                    .stroke().foregroundColor(.blue))
                        })
                    }
                    HStack(alignment: .top){
                        Image("evos").resizable()
                            .frame(width: 60,height: 60)
                            .cornerRadius(10)
                        VStack(alignment: .leading){
                        Text("Evos Aviasozlar").fontWeight(.bold)
                            .foregroundColor(.black)
                            Spacer()
                            Text("Aviasozlar street,3")
                                .font(.system(size: 13))
                                .foregroundColor(.black.opacity(0.7))
                            Spacer()
                            Text("1 km")
                                .font(.system(size: 13))
                                .foregroundColor(.black.opacity(0.7))
                        }
                        .frame(height: 60)
                    }
                    Divider()
                    HStack(alignment: .top){
                        Image("marojenoe").resizable()
                            .frame(width: 60,height: 60)
                            .cornerRadius(10)
                        VStack(alignment: .leading){
                        Text("Duboviy Marojenoe").fontWeight(.bold)
                            .foregroundColor(.black)
                            Spacer()
                            Text("st.Aviasozlar 15")
                                .font(.system(size: 13))
                                .foregroundColor(.black.opacity(0.7))
                            Spacer()
                            Text("1,3 km")
                                .font(.system(size: 13))
                                .foregroundColor(.black.opacity(0.7))
                        }
                        .frame(height: 60)
                    }
                }
                .padding(10)
            }
            //Navigation Bar
            .toolbar(content: {
                ToolbarItem(placement: .principal){
                    HStack{
                    TextField("Search",text: $search)
                        Image(systemName: "magnifyingglass")
                    }.padding(.leading)
                        .padding(.trailing)
                        .frame(maxWidth: UIScreen.width)
                        .frame(height: 35)
                        .overlay(RoundedRectangle(cornerRadius: 17.5).stroke(lineWidth: 1).foregroundColor(.black.opacity(0.3)))
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "line.3.horizontal")
                        .padding(.trailing)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .bottomBar){
                    HStack(alignment: .bottom){
                        Spacer()
                        VStack(spacing: 15){
                            Image(systemName: "house")
                            Text("Main")
                        }
                        Spacer()
                        VStack(spacing: 15){
                            Image(systemName: "creditcard")
                            Text("Payment")
                        }
                        Spacer()
                        VStack(spacing: 15){
                            Image(systemName: "arrow.left.arrow.right")
                            Text("Transfers")
                        }
                        Spacer()
                        VStack(spacing: 15){
                            Image(systemName: "ellipsis")
                                .padding(.bottom,10)
                            Text("More")
                        }
                        Spacer()
                    }
                    .padding(.top)
                }
            })
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .navigationBarTitle("",displayMode: .inline)
            .background(Color.gray.opacity(0.6))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
.previewInterfaceOrientation(.portrait)
    }
}
