import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var navegador: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let direccion = URL(fileURLWithPath: Bundle.main.path(forResource: "certificado", ofType: "pdf", inDirectory: "PDF")!)
        
        guard let dataPDF = try? Data(contentsOf: direccion) else {
            return
        }
        
        navegador.load(dataPDF, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccion)
        
        //navegador.scalesPageToFit = true ios 12 y menor
    }

}

