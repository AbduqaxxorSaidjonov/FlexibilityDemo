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
    var body: some View {
        VStack{
            HStack{
                Text("1")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.width/2,height: (UIScreen.height*2)/5)
                    .background(Color.blue)
                VStack{
                    Text("2").foregroundColor(.white)
                        .frame(width: UIScreen.width/2,height: UIScreen.height/5)
                        .background(Color.orange)
                    Text("3").foregroundColor(.white)
                        .frame(width: UIScreen.width/2,height: UIScreen.height/5)
                        .background(Color.orange)
                }
                .padding(.top,-8)
            }
                HStack{
                    Text("4").foregroundColor(.white)
                        .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                        .background(Color.red)
                    Text("5").foregroundColor(.white)
                        .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                        .background(Color.red)
                    Text("6").foregroundColor(.white)
                        .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                        .background(Color.red)
                    Text("7").foregroundColor(.white)
                        .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                        .background(Color.red)
                }
            HStack{
                HStack{
                VStack{
                Text("8").foregroundColor(.white)
                    .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                    .background(Color.orange)
                Text("9").foregroundColor(.white)
                    .frame(width: UIScreen.width/4,height: UIScreen.height/5)
                    .background(Color.orange)
                }
                .padding(.bottom,-8)
                Text("10")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.width/4,height: (UIScreen.height*2)/5)
                    .background(Color.orange)
                }
                .padding(.leading,-8)
                Text("11")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.width/2,height: (UIScreen.height*2)/5)
                    .background(Color.blue)
            }
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
