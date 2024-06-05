//
//  ContentView.swift
//  Davinci
//
//  Created by 김태진 on 6/5/24.
//

import SwiftUI

enum LoginType: String, CaseIterable {
    case kakao
    case google
    case apple
    
    var image: String {
        switch self {
        case .kakao:
            return "heart"
        case .google:
            return "circle"
        case .apple:
            return "heart.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .kakao:
            return Color.yellow
        case .google:
            return Color.white
        case .apple:
            return Color.black
        }
    }
}

struct ContentView: View {
    @State private var id: String = ""
    @State private var password: String = ""
    private let color = [Color.yellow, Color.white, Color.black]
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("Login_Background") // 배경 이미지 파일명
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("Logo_Image")
                        .font(.system(size: 150))
                        .padding(.bottom, 30)
                        .scaleEffect(1.4)
                    
                    Text("Da Vinci와 함께 더미텍스트 더미텍스트 더미텍스트더미텍스트더미텍스트더미텍스트")
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color.white)
                        .lineLimit(2)
                        .padding(.bottom, 110)
                    
                    Spacer()
                    VStack(spacing: 5) {
                        TextField(text: $id) {
                            Text("아이디 입력")
                                .foregroundStyle(Color.white)
                        }
                        .modifier(LoginTextField())
                        
                        TextField(text: $password) {
                            Text("비밀번호 입력")
                                .foregroundStyle(Color.white)
                        }
                        .modifier(LoginTextField())
                        
                        NavigationLink {
                            View1()
                        } label: {
                            Text("로그인")
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(Color.black)
                                .foregroundStyle(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 15)
                    
                    HStack(spacing: 5) {
                        Text("아이디 찾기 | ")
                        Text("비밀번호 찾기 | ")
                        Text("회원가입")
                    }
                    .font(.system(size: 15))
                    .foregroundStyle(Color.white)
                    .padding(.bottom, 40)
                    
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                        Text("SNS 계정으로 로그인")
                            .font(.system(size: 10))
                            .frame(maxWidth: .infinity)
                        Rectangle()
                            .frame(height: 1)
                    }
                    .foregroundStyle(Color.white)
                    .padding(.bottom, 10)
                    
                    HStack {
                        ForEach(LoginType.allCases, id: \.self) { value in
                            Circle()
                                .fill(value.color)
                                .frame(width: 40, height: 40)
                                .overlay {
                                    Image(systemName: value.image)
                                        .foregroundColor(.blue)
                                }
                                .padding(3)
                        }
                    }
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 24)
            }
        }
    }
}
#Preview {
    ContentView()
}

struct LoginTextField: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white, lineWidth: 1)
            )
    }
}

