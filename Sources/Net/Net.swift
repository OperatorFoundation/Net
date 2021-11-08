#if (os(macOS) || os(iOS) || os(watchOS) || os(tvOS))

@_exported import Network

#else

@_exported import NetworkLinux

#endif
