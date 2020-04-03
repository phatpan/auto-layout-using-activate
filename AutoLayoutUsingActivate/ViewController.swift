import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var addressView: UIView!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupAddressView()
  }

  func setupAddressView() {
    let addressViewController = AddressViewController(nibName: "AddressViewController", bundle: .main)
    addChild(addressViewController)
    addressView.addSubview(addressViewController.view)
    addressViewController.view.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      addressView.leadingAnchor.constraint(equalTo: addressViewController.view.leadingAnchor),
      addressView.trailingAnchor.constraint(equalTo: addressViewController.view.trailingAnchor),
      addressView.topAnchor.constraint(equalTo: addressViewController.view.topAnchor),
      addressView.bottomAnchor.constraint(equalTo: addressViewController.view.bottomAnchor)
    ])
    addressViewController.didMove(toParent: self)
  }
}

