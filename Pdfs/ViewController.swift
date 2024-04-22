import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var navegador: WKWebView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let direccion = Bundle.main.path(forResource: "certificado", ofType: "pdf") else { return }
        
        let archivo = URL(fileURLWithPath: direccion)
        
        guard let dataPDF = try? Data(contentsOf: archivo) else { return }
        
        navegador.load(dataPDF, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: archivo)
        
        //navegador.scalesPageToFit = true ios 12 y menor

    }
    
}

