//
//  Comparable+Extensions.swift
//
//  Created by Jonathan Landon on 12/1/15.
//
// The MIT License (MIT)
//
// Copyright (c) 2014-2016 Oven Bits, LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

extension Comparable {
    
    /**
     Bound the current value between a minimum and maximum value
     
     - parameter min: The minimum possible value
     - parameter max: The maximum possible value
     
     - returns: The current value bounded between a minimum and maximum value
    */
    public func limit(min min: Self, max: Self) -> Self {
        var value = self
        value.limitInPlace(min: min, max: max)
        return value
    }
    
    /**
     Bound the current value between a minimum and maximum value
     
     - parameter min: The minimum possible value
     - parameter max: The maximum possible value
     
     - returns: The current value bounded between a minimum and maximum value
     */
    public func limit(min: Self, _ max: Self) -> Self {
        return limit(min: min, max: max)
    }
    
    /**
     Bound self between a minimum and maximum value, in place
     
     - parameter min: The minimum possible value
     - parameter max: The maximum possible value
     */
    public mutating func limitInPlace(min min: Self, max: Self) {
        self = Swift.max(Swift.min(self, max), min)
    }
}
