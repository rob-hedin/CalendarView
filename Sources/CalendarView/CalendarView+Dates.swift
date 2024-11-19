//
//  CalendarView+Dates.swift
//  CalendarView
//
//  Copyright (c) 2024 Robert Hedin
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import SwiftUI


public extension CalendarView {
    
    func decorating(_ date: Date, systemImage: String? = nil, color: Color? = nil, size: UICalendarView.DecorationSize = .medium) -> Self {
        return decorating( dateComponentsSetFromDate([date]), systemImage: systemImage, color: color, size: size)
    }
    
    func decorating(_ date: Date, image: String, color: Color? = nil, size: UICalendarView.DecorationSize = .medium) -> Self {
        return decorating( dateComponentsSetFromDate([date]), image: image, color: color, size: size)
    }
    
    func decorating(_ date: Date, customView: @escaping () -> some View) -> Self {
        return decorating( dateComponentsSetFromDate([date]), customView: customView)
    }
    
    func decorating(_ date: Date, customView: @escaping (DateComponents) -> some View) -> Self {
        return decorating( dateComponentsSetFromDate([date]), customView: customView)
    }
    
    
    
    func decorating(_ dates: [Date], systemImage: String? = nil, color: Color? = nil, size: UICalendarView.DecorationSize = .medium) -> Self {
        return decorating( dateComponentsSetFromDate(dates), systemImage: systemImage, color: color, size: size)
    }
    
    func decorating(_ dates: [Date], image: String, color: Color? = nil, size: UICalendarView.DecorationSize = .medium) -> Self {
        return decorating( dateComponentsSetFromDate(dates), image: image, color: color, size: size)
    }
    
    func decorating(_ dates: [Date], customView: @escaping () -> some View) -> Self {
        return decorating( dateComponentsSetFromDate(dates), customView: customView)
    }
    
    func decorating(_ dates: [Date], customView: @escaping (DateComponents) -> some View) -> Self {
        return decorating( dateComponentsSetFromDate(dates), customView: customView)
    }
    
    
    
    
    func dateComponentsSetFromDate(_ dates: [Date]) -> Set<DateComponents> {
        var set = Set<DateComponents>()
        for date in dates {
            set.insert(dateComponentsFromDate(date))
        }
        return set
    }


    func dateComponentsFromDate(_ date: Date) -> DateComponents {
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: date)
        return dateComponents
    }

}

