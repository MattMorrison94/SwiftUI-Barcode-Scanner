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
    
}
