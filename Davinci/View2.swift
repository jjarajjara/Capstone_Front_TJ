//
//  View2.swift
//  Davinci
//
//  Created by 김태진 on 6/5/24.
//


import SwiftUI

struct View2: View {
    private let type = ["동양화", "아크릴화", "ㅇㅇㅇ", "수묵화", "수묵화2"]
    private let colums: [GridItem] = [GridItem(.flexible(), spacing: 16),
                                      GridItem(.flexible(), spacing: 16),
                                      GridItem(.flexible(), spacing: 16)]
    
    
    var body: some View {
        ZStack {
            Image("test")
                .resizable()
                .ignoresSafeArea()
            
            ZStack {
           
                VStack(alignment: .leading, spacing: 50) {
                    Text("미술 취향을 선택해주세요")
                        .font(.system(size: 18, weight: .bold))
                    
                    LazyVGrid(columns: colums, spacing: 10, content: {
                        ForEach(type, id: \.self) { index in
                            Text(index)
                                .frame(maxWidth: .infinity)
                                .frame(height: 30)
                                .background(Color.gray)
                                .foregroundStyle(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    })
                    
                    Spacer()
                    /*
                    NavigationLink {
                        ContentView()
                    } 
                    */
                        Text("다음")
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background(Color.gray)
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                     
                }
            }
            .padding(.horizontal, 24)
        }
        
    }


#Preview {
    NavigationStack {
        View2()
    }
}
