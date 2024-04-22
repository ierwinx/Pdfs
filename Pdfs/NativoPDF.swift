import UIKit
import PDFKit

class NativoPDF: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfView = PDFView()
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pdfView)
        
        pdfView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        pdfView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        
        guard let direccion = Bundle.main.url(forResource: "certificado", withExtension: "pdf"),
                let document = PDFDocument(url: direccion) else {
            return
        }
        pdfView.document = document
        pdfView.autoScales = true
    }
    
}
