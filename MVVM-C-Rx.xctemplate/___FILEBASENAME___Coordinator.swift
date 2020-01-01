//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import RxSwift

class ___VARIABLE_ModuleName___Coordinator: BaseCoordinator<Void> {
    
    private let rootViewController: UIViewController
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }
    
    override func start() throws -> Observable<Void> {
        
        let viewController = ___VARIABLE_ModuleName___ViewController()
        let viewModel = ___VARIABLE_ModuleName___ViewModel()
        viewController.viewModel = viewModel
        
        bindLifecycle(for: viewController)
        
        return Observable.empty()
    }
    
    func bindLifecycle(for viewController: ___VARIABLE_ModuleName___ViewController) {
        
        viewController.rx.viewWillAppear
            .subscribe(onNext: { _ in
                
            })
            .disposed(by: disposeBag)
    }
}
