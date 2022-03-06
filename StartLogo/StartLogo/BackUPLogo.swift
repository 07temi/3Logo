//
//  BackUPLogo.swift
//  StartLogo
//
//  Created by Артем Черненко on 06.03.2022.
//

import SwiftUI

struct BackUPLogo: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: width / 4, y: 0)) //верхний край
                path.addLine(to: CGPoint(x: width / 2.1, y: height / 5.5)) //макушка
                path.addLine(to: CGPoint(x: width / 1.9, y: height / 5.5)) //правое ухо
                path.addLine(to: CGPoint(x: width / 1.3, y: 0)) //верхний край
                path.addLine(to: CGPoint(x: width / 1.2, y: height / 3)) //правое ухо низ
                path.addLine(to: CGPoint(x: width, y: height / 1.7)) //правй край
                path.addLine(to: CGPoint(x: width / 1.66, y: height)) //подбородок
                path.addLine(to: CGPoint(x: width / 2.5, y: height)) //подбородок
                path.addLine(to: CGPoint(x: 0, y: height / 1.7)) //левый край
                path.addLine(to: CGPoint(x: width / 6, y: height / 3)) //левое ухо низ
            }
            //БЕЛАЯ ЧАСТЬ
            //левое ухо
            Path { path in
                path.move(to: CGPoint(x: width / 3.75, y: height / 8.55))
                path.addLine(to: CGPoint(x: width / 2.85, y: height / 3.75))
                path.addLine(to: CGPoint(x: width / 4.3, y: height / 3))
            }
            .fill(.white)
            //правое ухо
            Path { path in
                path.move(to: CGPoint(x: width / 1.36, y: height / 8.57))
                path.addLine(to: CGPoint(x: width / 1.53, y: height / 3.75))
                path.addLine(to: CGPoint(x: width / 1.3, y: height / 3))
            }
            .fill(.white)

        //моська
//            Path { path in
//                path.move(to: CGPoint(x: 95, y: 122))
//                path.addLine(to: CGPoint(x: 140, y: 165))
//                path.addLine(to: CGPoint(x: 150, y: 185))
//                path.addLine(to: CGPoint(x: 160, y: 165))
//                path.addLine(to: CGPoint(x: 205, y: 122))
//            //
//                path.addLine(to: CGPoint(x: 255, y: 155))
//                path.addLine(to: CGPoint(x: 265, y: 175))
//                path.addLine(to: CGPoint(x: 175, y: 275))
//
//                path.addLine(to: CGPoint(x: 150, y: 285))
//
//                path.addLine(to: CGPoint(x: 125, y: 275))
//                path.addLine(to: CGPoint(x: 35, y: 175))
//                path.addLine(to: CGPoint(x: 45, y: 155))
//            }
//            .fill(.white)
//            //скулы
//                //слевая
//            Path { path in
//                path.move(to: CGPoint(x: 65, y: 210))
//                path.addLine(to: CGPoint(x: 80, y: 190))
//                path.addLine(to: CGPoint(x: 90, y: 240))
//            }
//                //справая
//            Path { path in
//                path.move(to: CGPoint(x: 235, y: 210))
//                path.addLine(to: CGPoint(x: 220, y: 190))
//                path.addLine(to: CGPoint(x: 210, y: 240))
//            }
//            //нос
//            Path { path in
//                path.move(to: CGPoint(x: 140, y: 300))
//                path.addLine(to: CGPoint(x: 140, y: 275))
//                path.addLine(to: CGPoint(x: 120, y: 255))
//                path.addLine(to: CGPoint(x: 137, y: 250))
//
//                path.addLine(to: CGPoint(x: 163, y: 250))
//                path.addLine(to: CGPoint(x: 180, y: 255))
//                path.addLine(to: CGPoint(x: 160, y: 275))
//
//                path.addLine(to: CGPoint(x: 160, y: 300))
//            }
//            //глаз
//                //слева
//            Path { path in
//                path.move(to: CGPoint(x: 125, y: 185))
//                path.addLine(to: CGPoint(x: 100, y: 180))
//                path.addLine(to: CGPoint(x: 90, y: 160))
//                path.addLine(to: CGPoint(x: 115, y: 165))
//            }
//                //справа
//            Path { path in
//                path.move(to: CGPoint(x: 175, y: 185))
//                path.addLine(to: CGPoint(x: 200, y: 180))
//                path.addLine(to: CGPoint(x: 210, y: 160))
//                path.addLine(to: CGPoint(x: 185, y: 165))
//            }
        }
    }
}

struct BackUPLogo_Previews: PreviewProvider {
    static var previews: some View {
        BackUPLogo()
            .frame(width: 300, height: 300)
    }
}
