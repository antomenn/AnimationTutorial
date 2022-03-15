//
//  ContentView.swift
//  TutorialAnimations
//
//  Created by Antonio Mennillo on 14/03/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var Robot : String = ""
    
    var body: some View {
        VStack(alignment:.center){
            
            Image(Robot)
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .onAppear(perform: timerRobot)
            
            
        }
    }
    
    func timerRobot(){
        
        var index = 1
        let timer = Timer.scheduledTimer(withTimeInterval: 0.08, repeats: true) { (Timer) in
            
            Robot = "Robot\(index)"
            
            index += 1
            
            if (index > 23){
                index = 1
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
