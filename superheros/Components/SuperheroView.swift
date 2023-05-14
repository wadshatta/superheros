//
//  SuperheroView.swift
//  superheros
//
//  Created by MacBook Pro on 25/05/2022.
//

import SwiftUI

struct SuperheroView: View {
    
    var SuperH : SuperHero
    @State var isScaling: Bool = false
    @State var issliding : Bool = false
   // var gradient : [Color] = [Color("ColorHulk01"),Color("ColorHulk02")]
    @State var  isalertPresented : Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    
    
    
    
    var body: some View {
        ZStack {
            Image(SuperH.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaling ? 1 : 0.7)
                .animation(.easeOut(duration: 5), value: isScaling)
            
            VStack{
                Text(SuperH.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                Button {
                    isalertPresented.toggle()
                    hapticImpact.impactOccurred()
                    playSound(sound: "chimeup", type: "mp3")
                    
                } label: {
                    HStack{
                        Text("Start")
                         Image(systemName: "arrow.right.circle")
                    }
                    .padding()
                    .font(.title2)
                    .background(LinearGradient(colors: SuperH.gradientColors, startPoint: .bottomTrailing, endPoint: .topLeading))
                    
                    .clipShape(Capsule())
                    .shadow(radius: 10 )
                   
                    .alert(isPresented: $isalertPresented) {
                        Alert(title: Text("more about \(SuperH.title)"), message: Text(SuperH.message), dismissButton: .default(Text("Ok")))
                    }
                }
                
            

            }//Vstack
            .offset(y: issliding ? 150 : 300)
            .animation(.easeOut(duration: 3), value: issliding)
        }//Zstack
        .frame(width: 335, height: 545, alignment: .center)
        .background(LinearGradient(colors: SuperH.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(16)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .onAppear {
            isScaling = true
            issliding = true
        }
    }
}

struct SuperheroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroView(SuperH:superheroData[1])
    }
}
