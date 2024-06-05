//
//  View1.swift
//  Davinci
//
//  Created by 김태진 on 6/5/24.
//
/*
 import SwiftUI
 
 struct View1: View {
 @State private var name: String = ""
 
 var body: some View {
 NavigationStack {
 VStack(spacing: 40) {
 Text("사용하실 닉네임을 설정해주세요")
 .font(.system(size: 18, weight: .bold))
 .frame(maxWidth: .infinity, alignment: .leading)
 Spacer().frame(height: 20)
 /*
  Rectangle()
  .fill(Color.yellow)
  .frame(width: 100, height: 100)
  */
 //이미지 플레이스홀더
 Image("View1_image")
 .resizable()
 .scaledToFill() // 이미지를 중앙에 맞추고, 잘라냄
 .scaleEffect(2.6)
 .clipped() // 이미지가 뷰의 경계를 벗어나지 않도록 자름
 .frame(width: 170, height: 170)
 .background(Color.gray.opacity(0.5))
 .cornerRadius(10)
 
 
 VStack(spacing: 4) {
 HStack(spacing: 16) {
 TextField(text: $name) {
 Text("닉네임 설정")
 }
 
 
 Text("중복체크")
 .onTapGesture {
 print("ttt")
 }
 .padding(5)
 .background(Color.gray)
 .clipShape(RoundedRectangle(cornerRadius: 10))
 }
 
 HStack {
 ForEach(0..<3) { i in
 HStack(spacing: 5) {
 Image(systemName: "checkmark")
 .font(.system(size: 12))
 Text("조건\(i+1)")
 .font(.system(size: 12))
 }
 }
 }
 .frame(maxWidth: .infinity, alignment: .leading)
 
 Spacer()
 
 NavigationLink {
 View2()
 } label: {
 Text("다음")
 .frame(maxWidth: .infinity)
 .frame(height: 40)
 .background(Color.gray)
 .foregroundStyle(Color.white)
 .clipShape(RoundedRectangle(cornerRadius: 10))
 }
 }
 }
 }
 .padding(.horizontal, 24)
 .background(Color.gray.opacity(0.7))
 }
 }
 
 #Preview {
 View1()
 }
 */
import SwiftUI

struct View1: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack(spacing: 40) {
            Text("사용하실 닉네임을 설정해주세요")
                .font(.system(size: 18, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer().frame(height: 20)
            
            //이미지 플레이스홀더
            Image("View1_image")
                .resizable()
                .scaledToFill() // 이미지를 중앙에 맞추고, 잘라냄
                .scaleEffect(2.6)
                .clipped() // 이미지가 뷰의 경계를 벗어나지 않도록 자름
                .frame(width: 170, height: 170)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
            
            VStack(spacing: 4) {
                HStack(spacing: 16) {
                    TextField(text: $name) {
                        Text("닉네임 설정")
                    }
                    
                    Text("중복체크")
                        .onTapGesture {
                            print("ttt")
                        }
                        .padding(5)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                HStack {
                    ForEach(0..<3) { i in
                        HStack(spacing: 5) {
                            Image(systemName: "checkmark")
                                .font(.system(size: 12))
                            Text("조건\(i+1)")
                                .font(.system(size: 12))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                NavigationLink {
                    View2()
                } label: {
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
        .background(Color.gray.opacity(0.7)) // 전체 배경색 회색 처리
        .navigationViewStyle(StackNavigationViewStyle()) // iPad에서 스택 형식으로 렌더링
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}

