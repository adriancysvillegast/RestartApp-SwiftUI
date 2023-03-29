//
//  HomeView.swift
//  Restart
//
//  Created by Adriancys Jesus Villegas Toro on 6/3/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - properties
    
    @AppStorage("onboardingView") var isOnboardingViewActive = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            // MARK: - header
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        Animation
                            .easeInOut(duration: 4)
                            .repeatForever()
                        , value: isAnimating)
                    
            }
            
            // MARK: - center
            Text("The time that leads to mastary is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - footer
            
            Spacer()
            
            
            Button(action: {
                //some Action
                withAnimation {
                    playSound(sound: "success", type: "m4a")
                    isOnboardingViewActive = true
                }
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }//: button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

            
        }//vstack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isAnimating = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
