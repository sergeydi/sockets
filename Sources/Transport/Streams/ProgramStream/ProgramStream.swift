public enum ProgramStreamError: Error {
    case unsupportedSecurityLayer
}

public typealias DuplexProgramStream = ClientStream & ServerStream

public typealias Port = UInt16

public protocol ProgramStream: DuplexStream {
    var scheme: String { get }
    var hostname: String { get }
    var port: Port { get }
    init(scheme: String, hostname: String, port: Port) throws
}

extension Int {
    public var port: Port {
        return Port(self % Int(Port.max))
    }
}