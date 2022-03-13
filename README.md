# [PDFKitDemo](https://www.youtube.com/watch?v=GaNYWnlV3R4)
PDFKit is a great way to interact with PDF Documents, pages, annotations, and more.

<img width="490" src="https://user-images.githubusercontent.com/47273077/158060052-ce62ac0f-59c6-4a17-a8f4-678488054324.png">

```swift
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
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdfView.frame = view.bounds
    }


}
```

## Tips you can also create PDF programatically
```swift
        let newDocument = PDFDocument()
        guard let page = PDFPage(image: UIImage(systemName: "house")!) else {
            return
        }
        newDocument.insert(page, at: 0)
        pdfView.document = newDocument
 ```


