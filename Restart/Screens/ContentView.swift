//
//  ContentView.swift
//  Restart
//
//  Created by Adriancys Jesus Villegas Toro on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @AppStorage("onboardingView") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnboardingView()
            }else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
