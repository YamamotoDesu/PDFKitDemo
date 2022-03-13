//
//  ViewController.swift
//  PDFKitDemo
//
//  Created by 山本響 on 2022/03/13.
//
import PDFKit
import UIKit

class ViewController: UIViewController, PDFViewDelegate {
    
    // Views
    let pdfView = PDFView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pdfView)
        
        // Document
        guard let url = Bundle.main.url(forResource: "sample", withExtension: "pdf") else {
            return
        }
        
        guard let document = PDFDocument(url: url) else {
            return
        }
        
        pdfView.document = document
        pdfView.delegate = self
        
        // Create document
//        let newDocument = PDFDocument()
//        guard let page = PDFPage(image: UIImage(systemName: "house")!) else {
//            return
//        }
//        newDocument.insert(page, at: 0)
//        pdfView.document = newDocument
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdfView.frame = view.bounds
    }


}

