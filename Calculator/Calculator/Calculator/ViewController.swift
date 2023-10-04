//
//  ViewController.swift
//  Calculator
//
//  Created by MacBook Pro on 30/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var hasil: UILabel!
    var labelPerhitungan:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }

    func clearAll(){
        labelPerhitungan = ""
        hasil.text = "0"
        hasil.text = "0"
    }
    
    
    func isiHasil(value:String){
            labelPerhitungan = labelPerhitungan + value
            hasil.text = labelPerhitungan
        
    }
    
    @IBAction func clear(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func C(_ sender: Any) {
        if(!labelPerhitungan.isEmpty){
           labelPerhitungan.removeLast()
           hasil.text = labelPerhitungan
       }
    }
    
    @IBAction func persen(_ sender: Any) {
        isiHasil(value: " *0.01 ")
    }
    
    @IBAction func bagi(_ sender: Any) {
        isiHasil(value: " / ")
    }
    
    @IBAction func kali(_ sender: Any) {
        isiHasil(value: " * ")
    }
    
    @IBAction func minus(_ sender: Any) {
        isiHasil(value: " - ")
    }
    
    @IBAction func plus(_ sender: Any) {
        isiHasil(value: " + ")
    }
    
    @IBAction func samadengan(_ sender: Any) {
        if labelPerhitungan.contains(",") {
            labelPerhitungan = labelPerhitungan.replacingOccurrences(of: ",", with: ".")

        }
        var numArr = labelPerhitungan.components(separatedBy: " ")
        for (index, element) in numArr.enumerated() {
            if(element != "-" && element != "+" && element != "*" && element != "/" && element != "*0.01" && element != "=" && element != "") && !element.contains(".") {
                    numArr[index] += ".0"
            }
        }
        let itung = numArr.joined(separator: " ")
        let expression = NSExpression(format: itung)
        let hasilAkhir = expression.expressionValue(with: nil, context: nil) as! Double
        let numArrHasil = String(hasilAkhir).components(separatedBy: ".")

        if numArrHasil[1] == "0"{
            hasil.text = numArrHasil[0]
            labelPerhitungan = numArrHasil[0]
        }
        else{
            hasil.text = String(hasilAkhir)
            labelPerhitungan = String(hasilAkhir)
        }
    
    }
    
    
    @IBAction func nol(_ sender: Any) {
        isiHasil(value: "0")
    }
    
    @IBAction func satu(_ sender: Any) {
        isiHasil(value: "1")
    }
    
    @IBAction func dua(_ sender: Any) {
        isiHasil(value: "2")
    }
    
    @IBAction func tiga(_ sender: Any) {
        isiHasil(value: "3")
    }
    
    @IBAction func empat(_ sender: Any) {
        isiHasil(value: "4")
    }
    
    @IBAction func lima(_ sender: Any) {
        isiHasil(value: "5")
    }
    
    @IBAction func enam(_ sender: Any) {
        isiHasil(value: "6")
    }
    
    @IBAction func tujuh(_ sender: Any) {
        isiHasil(value: "7")
    }
    
    @IBAction func delapan(_ sender: Any) {
        isiHasil(value: "8")
    }
    
    @IBAction func sembilan(_ sender: Any) {
        isiHasil(value: "9")
    }
    
    @IBAction func koma(_ sender: Any) {
        isiHasil(value: ",")
    }
    
    
}

