# MVVM-C-Rx-Template
Xcode File Template for MVVM-Coordinator pattern with RxSwift

# How To Install
1. Clone the repository
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. If Templates folder doesn't exist, create it
3. Copy and paste the MVVM-C-Rx.xctemplate in Templates folder
4. Add ```BaseCoordinator.swift``` and ```RxViewController.swift``` files to your Xcode project.

# Use
1. Open your Xcode project
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```MVVM-C-Rx``` template and choose it.
4. Set a name for your module. Examples: ```Home, Auth, SignIn```

# Generated Code

Let's suppose we wanted to create the Auth module. Here's how it would look:

### Coordinator
```AuthCoordinator.swift```
```swift
import RxSwift

class AuthCoordinator: BaseCoordinator<Void> {
    
    private let rootViewController: UIViewController
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    override func start() throws -> Observable<Void> {
        
        let viewController = AuthViewController()
        let viewModel = AuthViewModel()
        viewController.viewModel = viewModel
        
        bindLifecycle(for: viewController)
        
        return Observable.empty()
    }
    
    func bindLifecycle(for viewController: AuthViewController) {
        
        viewController.rx.viewWillAppear
            .subscribe(onNext: { _ in
                
            })
            .disposed(by: disposeBag)
    }
}
```

### View
```AuthViewController.swift```
```swift
import UIKit
import RxSwift
import RxCocoa

class AuthViewController: UIViewController {
    
    // MARK: - Superview Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Properties
    let disposeBag = DisposeBag()
    var viewModel: AuthViewModel!
}

// MARK: - Binding
extension AuthViewController {
    //TO-DO: Bind UI Elements
}

// MARK: - UI Setup
extension AuthViewController {
    func setupUI() {
        
    }
}
```

### ViewModel
```AuthViewModel.swift```
```swift
import RxSwift
import RxCocoa

struct AuthViewModel {

    //TO-DO: Implement View Model
}

```

