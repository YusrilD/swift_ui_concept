//
//  LineGraph.swift
//  swift_ui_concept
//
//  Created by Triv on 13/01/26.
//

import SwiftUI
import Charts


struct LineGraph: View {

    struct MonthlyHoursOfSunshine {
        var date: Date
        var hoursOfSunshine: Double


        init(month: Int, hoursOfSunshine: Double) {
            let calendar = Calendar.autoupdatingCurrent
            self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
            self.hoursOfSunshine = hoursOfSunshine
        }
    }


    var data: [MonthlyHoursOfSunshine] = [
        MonthlyHoursOfSunshine(month: 1, hoursOfSunshine: 74),
        MonthlyHoursOfSunshine(month: 2, hoursOfSunshine: 99),
        // ...
        MonthlyHoursOfSunshine(month: 12, hoursOfSunshine: 62)
    ]
    

    var body: some View {
        Chart(data) {
                LineMark(
                    x: .value("Month", $0.date),
                    y: .value("Hours of Sunshine", $0.hoursOfSunshine)
                )
            }
    }
}

//struct MonthlyHoursOfSunshine: Identifiable {
//    var id = UUID()
//    
//    var date: Date
//    var hoursOfSunshine: Double
//
//
//    init(month: Int, hoursOfSunshine: Double) {
//        let calendar = Calendar.autoupdatingCurrent
//        self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
//        self.hoursOfSunshine = hoursOfSunshine
//    }
//}

#Preview {
    LineGraph()
}
