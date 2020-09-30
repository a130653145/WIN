//
//  ContentView.swift
//  123456
//
//  Created by User17 on 2020/9/23.
//

import SwiftUI


func hi() -> String {
    return "Hello, World."
}

struct ContentView: View {
    var body: some View {

                    ZStack
            {
                        
                ZStack{
                    
                    
                    
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(Color(red: 100, green: 0.5, blue: 0.5))
                        .overlay(RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 2))                                          /*
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color(red: 100, green: 100, blue: 100))
                        .offset(x: 200, y: 200)
                    */
                    

           
                    
                                     //left hand
                    
                    Path({
                        path in
                        path.move(to: CGPoint(x: 60, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 85,y:340), control: CGPoint (x: 20,y: 350))
                           

                        
                    }).foregroundColor(Color(red: 100, green: 0.5, blue: 0.5))
                    
                    
                    //righthand
                    Path({
                        path in
                        path.move(to: CGPoint(x: 260, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 235,y:340), control: CGPoint (x: 320,y: 340))
                    }).foregroundColor(Color(red: 100, green: 0.5, blue: 0.5))
                    //leftleg
                    Path({
                        path in
                        path.move(to: CGPoint(x: 160, y: 375))
                        path.addQuadCurve(to: CGPoint(x: 100,y:350), control: CGPoint (x: 50,y: 400))
                  }).foregroundColor(.red)
                    
                        
                    //right leg
                    Path({
                        path in
                        path.move(to: CGPoint(x: 175, y: 373))
                        path.addQuadCurve(to: CGPoint(x: 225,y:350), control: CGPoint (x: 280,y: 400))
                        
                       
                        }).foregroundColor(.red)
                    
                    
                    //mouth
                
                    Path({
                        path in
                        path.move(to: CGPoint(x: 155, y: 310))
                        path.addQuadCurve(to: CGPoint(x: 175,y:310), control: CGPoint (x: 165,y: 290))
                  }).foregroundColor(Color(red: 200/255, green: 2/255, blue: 2/255))

                    Path({
                        path in
                        path.move(to: CGPoint(x: 155, y: 310))
                        path.addQuadCurve(to: CGPoint(x: 175,y:310), control: CGPoint (x: 165,y: 340))
                    }).foregroundColor(.red)
                    
                    
                    //right EYES
                    Group{
                    Ellipse()
                        .fill(Color.black)
                        .frame(width: 40, height: 15)
                        
                        
                        Ellipse()
                            .fill(Color.white)
                            .frame(width: 20, height: 10)
                            .offset(x:10,y:0)
                        
                    }.rotationEffect(.degrees(270))
                    .offset(x:-45,y:-10)
                    
                    //left EYES
                    Group{
                    Ellipse()
                        .fill(Color.black)
                        .frame(width: 40, height: 15)
                        
                        
                        Ellipse()
                            .fill(Color.white)
                            .frame(width: 20, height: 10)
                            .offset(x:10,y:0)
                        
                    }.rotationEffect(.degrees(270))
                    .offset(x:50,y:-10)
                    
                    Group{
                
                    Ellipse()
                        .fill(Color.pink)
                        .frame(width: 30, height: 10)
                        .overlay(RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 2))
                        .offset(x:50,y:30)
                    
                    Ellipse()
                        .fill(Color.pink)
                        .frame(width: 30, height: 10)
    
                        
                        .overlay(RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 2))
                            .offset(x:-40,y:30)
                    
                        
                        //righthand line
                        Path
                        { (path) in
                                path.move(to: CGPoint(x: 85, y: 340))
                                path.addQuadCurve(to: CGPoint(x: 60, y: 280), control:CGPoint(x: 18, y: 345))
                                                  }.stroke(Color(.black),lineWidth:2)
                        
                        //lefthand line
                        Path
                        { (path) in
                                path.move(to: CGPoint(x: 235, y: 340))
                                path.addQuadCurve(to: CGPoint(x: 260, y: 280), control:CGPoint(x: 320, y: 340))
                                                }.stroke(Color(.black),lineWidth:2)
                        
                        
                        //rightleg line
                        Path
                        { (path) in
                                path.move(to: CGPoint(x: 175, y: 373))
                                path.addQuadCurve(to: CGPoint(x: 225, y: 350), control:CGPoint(x: 280, y: 400))
                            
                            path.move(to: CGPoint(x: 175, y: 373))
                            path.addQuadCurve(to: CGPoint(x: 225, y: 350), control:CGPoint(x: 200, y: 362))
                                
                        }.stroke(Color(.black),lineWidth:2)
                        
                        
                        //leftleg line
                        Path
                        { (path) in
                                path.move(to: CGPoint(x: 160, y: 375))
                                path.addQuadCurve(to: CGPoint(x: 98, y: 351), control:CGPoint(x: 55, y: 400))
                            
                            path.move(to: CGPoint(x: 160, y: 375))
                            path.addQuadCurve(to: CGPoint(x: 98, y: 350), control:CGPoint(x: 131, y: 362))
                                
                        }.stroke(Color(.black),lineWidth:2)
                        
                    }
                        
                    
                    
                    
                    
                    }//zstack
                   
                }
                        
            }
        
        
}

        
       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
