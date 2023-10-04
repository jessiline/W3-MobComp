//
//  ViewController.swift
//  Calculator
//
//  Created by MacBook Pro on 30/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var hasil: UILabel!
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }

    func clearAll(){
        workings = ""
        hasil.text = "0"
        perhitungan.text = "0"
    }
    
    
    func isiHasil(value:String){
            workings = workings + value
            perhitungan.text = workings
        
    }
    
    @IBOutlet weak var perhitungan: UILabel!
    @IBAction func clear(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func C(_ sender: Any) {
        if(!workings.isEmpty){
           workings.removeLast()
           perhitungan.text = workings
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
        if workings.contains(",") {
            workings = workings.replacingOccurrences(of: ",", with: ".")

        }
        var numArr = workings.components(separatedBy: " ")
        print(numArr)
        for (index, element) in numArr.enumerated() {
            if(element != "-" && element != "+" && element != "*" && element != "/" && element != "*0.01" && element != "=" && element != "") && !element.contains(".") {
                    numArr[index] += ".0"
            }
        }
        var itung = numArr.joined(separator: " ")

        print(itung)

        let expression = NSExpression(format: itung)
        let hasilAkhir = expression.expressionValue(with: nil, context: nil) as! Double
        var numArrHasil = String(hasilAkhir).components(separatedBy: ".")
        print(numArrHasil)
        if numArrHasil[1] == "0"{
            hasil.text = numArrHasil[0]
        }
        else{
            hasil.text = String(hasilAkhir)
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

