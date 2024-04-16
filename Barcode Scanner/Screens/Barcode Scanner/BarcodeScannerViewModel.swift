//
//  BarcodeScannerViewModel.swift
//  Barcode Scanner
//
//  Created by Matthew Morrison on 16/4/2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned." : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? . red : .green
    }
    
}
