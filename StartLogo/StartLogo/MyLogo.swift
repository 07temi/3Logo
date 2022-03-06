//
//  MyLogo.swift
//  StartLogo
//
//  Created by Артем Черненко on 06.03.2022.
//

import SwiftUI

struct MyLogo: View {
    let size: Int
    var body: some View {
        GeometryReader { geometry in
//            Можно было уйти от параметров фрейма, но тогда много возни с приведением типов
//            получалось
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
            Path { path in
                path.move(to: CGPoint(x: width / 3.15, y: height / 2.5))
                path.addLine(to: CGPoint(x: width / 2.14, y: height / 1.81))
                path.addLine(to: CGPoint(x: width / 2, y: height / 1.62))
                path.addLine(to: CGPoint(x: width / 1.87, y: height / 1.81))
                path.addLine(to: CGPoint(x: width / 1.46, y: height / 2.5))
            //
                path.addLine(to: CGPoint(x: width / 1.17, y: height / 1.93))
                path.addLine(to: CGPoint(x: width / 1.13, y: height / 1.71))
                path.addLine(to: CGPoint(x: width / 1.71, y: width / 1.09))

                path.addLine(to: CGPoint(x: width / 2, y: height / 1.05))

                path.addLine(to: CGPoint(x: width / 2.4, y: width / 1.09))
                path.addLine(to: CGPoint(x: width / 8.57, y: height / 1.71))
                path.addLine(to: CGPoint(x: width / 6.66, y: height / 1.93))
            }
            .fill(.white)
//
            
            //скулы
//                //слевая
            Path { path in
                path.move(to: CGPoint(x: width / 4.6, y: height / 1.42))
                path.addLine(to: CGPoint(x: width / 3.75, y: height / 1.57))
                path.addLine(to: CGPoint(x: width / 3.33, y: height / 1.25))
            }
//                //справая
            Path { path in
                path.move(to: CGPoint(x: width / 1.27, y: height / 1.42))
                path.addLine(to: CGPoint(x: width / 1.36, y: height / 1.57))
                path.addLine(to: CGPoint(x: width / 1.42, y: height / 1.25))
            }
//            //нос
            Path { path in
                path.move(to: CGPoint(x: width / 2.14, y: height))
                path.addLine(to: CGPoint(x: width / 2.14, y: height / 1.09))
                path.addLine(to: CGPoint(x: width / 2.5, y: height / 1.17))
                path.addLine(to: CGPoint(x: width / 2.18, y: height / 1.2))

                path.addLine(to: CGPoint(x: width / 1.84, y: height / 1.2))
                path.addLine(to: CGPoint(x: width / 1.66, y: height / 1.17))
                path.addLine(to: CGPoint(x: width / 1.87, y: height / 1.09))

                path.addLine(to: CGPoint(x: width / 1.87, y: height))
            }
//            //глаз
//                //слева
            Path { path in
                path.move(to: CGPoint(x: width / 2.4, y: height / 1.62))
                path.addLine(to: CGPoint(x: width / 3, y: height / 1.66))
                path.addLine(to: CGPoint(x: width / 3.33, y: height / 1.87))
                path.addLine(to: CGPoint(x: width / 2.6, y: height / 1.81))
            }
//справа
            Path { path in
                path.move(to: CGPoint(x: width / 1.71, y: height / 1.62))
                path.addLine(to: CGPoint(x: width / 1.5, y: height / 1.66))
                path.addLine(to: CGPoint(x: width / 1.42, y: height / 1.87))
                path.addLine(to: CGPoint(x: width / 1.62, y: height / 1.81))
            }
        }
        .frame(width: CGFloat(size), height: CGFloat(size))
    }
}

struct MyLogo_Previews: PreviewProvider {
    static var previews: some View {
        MyLogo(size: 200)
    }
}
