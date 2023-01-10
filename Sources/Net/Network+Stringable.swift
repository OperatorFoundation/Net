//
//  Network+Stringable.swift
//  
//
//  Created by Mafalda on 1/9/23.
//

import Foundation

import Datable

extension IPv4Address
{
    public var string: String
    {
        let data = self.rawValue
        return "\(data[0]).\(data[1]).\(data[2]).\(data[3])"
    }
}
