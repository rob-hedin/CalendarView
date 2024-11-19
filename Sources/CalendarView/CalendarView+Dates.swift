//
//  CalendarView+Dates.swift
//  CalendarView
//
//  Created by Robert Hedin on 11/19/24.
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

