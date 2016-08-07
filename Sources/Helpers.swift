/*
 The MIT License (MIT)
 
 Copyright (c) 2016 Swiftification
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation

public extension Dispatch {
  
  static func async(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.main, closure: closure)
  }
  
  public func async(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.main, closure: closure)
  }
  
  static func asyncBackground(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalBackground, closure: closure)
  }
  
  func asyncBackground(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalBackground, closure: closure)
  }
  
  static func asyncUtility(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUtility, closure: closure)
  }
  
  func asyncUtility(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUtility, closure: closure)
  }
  
  static func asyncUserInitiated(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUserInitiated, closure: closure)
  }
  
  func asyncUserInitiated(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUserInitiated, closure: closure)
  }
  
  static func asyncUserInteractive(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUserInteractive, closure: closure)
  }
  
  func asyncUserInteractive(_ closure: DispatchClosure) -> Dispatch {
    return async(Queue.globalUserInteractive, closure: closure)
  }
  
}

public extension Queue {
  public static var globalUserInteractive : DispatchQueue { return global(Queue.Priority.userInteractive) }
  public static var globalUserInitiated : DispatchQueue { return global(Queue.Priority.userInitiated) }
  public static var globalUtility : DispatchQueue { return global(Queue.Priority.utility) }
  public static var globalBackground : DispatchQueue { return global(Queue.Priority.background) }
}
