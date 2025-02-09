import ExpoModulesCore
import WatchConnectivity

public class WatchConnectivityDelegate: ExpoAppDelegateSubscriber, WCSessionDelegate {
  private var session: WCSession?
  private weak var module: ExpoWatchConnectivityModule?
  
  public init(module: ExpoWatchConnectivityModule) {
    self.module = module
    super.init()
    
    if WCSession.isSupported() {
      self.session = WCSession.default
      self.session?.delegate = self
      self.session?.activate()
    }
  }
  
  @MainActor required init() {
    fatalError("init() has not been implemented")
  }
  
  // MARK: - WCSessionDelegate
  
  public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    module?.sendEvent("onSessionStateChange", [
      "state": activationState.rawValue,
      "error": error?.localizedDescription ?? NSNull()
    ])
  }
  
  public func sessionDidBecomeInactive(_ session: WCSession) {
    module?.sendEvent("onSessionStateChange", [
      "state": session.activationState.rawValue
    ])
  }
  
  public func sessionDidDeactivate(_ session: WCSession) {
    // Activate the new session after having switched to a new watch
    session.activate()
    module?.sendEvent("onSessionStateChange", [
      "state": session.activationState.rawValue
    ])
  }
} 
