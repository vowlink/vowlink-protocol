// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: VowLink/messages.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Hello {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var version: Int32 = 0

  /// 32-byte value
  var peerID: Data = SwiftProtobuf.Internal.emptyData

  /// maximum number of messages per hour
  var rateLimit: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct EncryptedMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tbs: EncryptedMessage.TBS {
    get {return _storage._tbs ?? EncryptedMessage.TBS()}
    set {_uniqueStorage()._tbs = newValue}
  }
  /// Returns true if `tbs` has been explicitly set.
  var hasTbs: Bool {return _storage._tbs != nil}
  /// Clears the value of `tbs`. Subsequent reads from it will return its default value.
  mutating func clearTbs() {_uniqueStorage()._tbs = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct TBS {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var channelID: Data = SwiftProtobuf.Internal.emptyData

    var encryptedContent: Data = SwiftProtobuf.Internal.emptyData

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Link {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tbs: Link.TBS {
    get {return _storage._tbs ?? Link.TBS()}
    set {_uniqueStorage()._tbs = newValue}
  }
  /// Returns true if `tbs` has been explicitly set.
  var hasTbs: Bool {return _storage._tbs != nil}
  /// Clears the value of `tbs`. Subsequent reads from it will return its default value.
  mutating func clearTbs() {_uniqueStorage()._tbs = nil}

  var signature: Data {
    get {return _storage._signature}
    set {_uniqueStorage()._signature = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct TBS {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var trusteePubKey: Data = SwiftProtobuf.Internal.emptyData

    var expiration: Double = 0

    var displayName: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct LinkRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var trusteePubKey: Data = SwiftProtobuf.Internal.emptyData

  var desiredDisplayName: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Message {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tbs: Message.TBS {
    get {return _storage._tbs ?? Message.TBS()}
    set {_uniqueStorage()._tbs = newValue}
  }
  /// Returns true if `tbs` has been explicitly set.
  var hasTbs: Bool {return _storage._tbs != nil}
  /// Clears the value of `tbs`. Subsequent reads from it will return its default value.
  mutating func clearTbs() {_uniqueStorage()._tbs = nil}

  var signature: Data {
    get {return _storage._signature}
    set {_uniqueStorage()._signature = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct TBS {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var chain: [Link] = []

    /// JSON
    var content: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Subscribe {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var channelID: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Unsubscribe {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var channelID: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Packet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var content: OneOf_Content? {
    get {return _storage._content}
    set {_uniqueStorage()._content = newValue}
  }

  var msg: EncryptedMessage {
    get {
      if case .msg(let v)? = _storage._content {return v}
      return EncryptedMessage()
    }
    set {_uniqueStorage()._content = .msg(newValue)}
  }

  var subscribe: Subscribe {
    get {
      if case .subscribe(let v)? = _storage._content {return v}
      return Subscribe()
    }
    set {_uniqueStorage()._content = .subscribe(newValue)}
  }

  var unsubscribe: Unsubscribe {
    get {
      if case .unsubscribe(let v)? = _storage._content {return v}
      return Unsubscribe()
    }
    set {_uniqueStorage()._content = .unsubscribe(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Content: Equatable {
    case msg(EncryptedMessage)
    case subscribe(Subscribe)
    case unsubscribe(Unsubscribe)

  #if !swift(>=4.1)
    static func ==(lhs: Packet.OneOf_Content, rhs: Packet.OneOf_Content) -> Bool {
      switch (lhs, rhs) {
      case (.msg(let l), .msg(let r)): return l == r
      case (.subscribe(let l), .subscribe(let r)): return l == r
      case (.unsubscribe(let l), .unsubscribe(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Hello: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Hello"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .standard(proto: "peer_id"),
    3: .standard(proto: "rate_limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.version)
      case 2: try decoder.decodeSingularBytesField(value: &self.peerID)
      case 3: try decoder.decodeSingularInt32Field(value: &self.rateLimit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.version != 0 {
      try visitor.visitSingularInt32Field(value: self.version, fieldNumber: 1)
    }
    if !self.peerID.isEmpty {
      try visitor.visitSingularBytesField(value: self.peerID, fieldNumber: 2)
    }
    if self.rateLimit != 0 {
      try visitor.visitSingularInt32Field(value: self.rateLimit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Hello, rhs: Hello) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.peerID != rhs.peerID {return false}
    if lhs.rateLimit != rhs.rateLimit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension EncryptedMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "EncryptedMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tbs"),
  ]

  fileprivate class _StorageClass {
    var _tbs: EncryptedMessage.TBS? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tbs = source._tbs
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._tbs)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._tbs {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: EncryptedMessage, rhs: EncryptedMessage) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._tbs != rhs_storage._tbs {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension EncryptedMessage.TBS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = EncryptedMessage.protoMessageName + ".TBS"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
    3: .standard(proto: "encrypted_content"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.channelID)
      case 3: try decoder.decodeSingularBytesField(value: &self.encryptedContent)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channelID.isEmpty {
      try visitor.visitSingularBytesField(value: self.channelID, fieldNumber: 1)
    }
    if !self.encryptedContent.isEmpty {
      try visitor.visitSingularBytesField(value: self.encryptedContent, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: EncryptedMessage.TBS, rhs: EncryptedMessage.TBS) -> Bool {
    if lhs.channelID != rhs.channelID {return false}
    if lhs.encryptedContent != rhs.encryptedContent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Link: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Link"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tbs"),
    2: .same(proto: "signature"),
  ]

  fileprivate class _StorageClass {
    var _tbs: Link.TBS? = nil
    var _signature: Data = SwiftProtobuf.Internal.emptyData

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tbs = source._tbs
      _signature = source._signature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._tbs)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._signature)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._tbs {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._signature.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._signature, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Link, rhs: Link) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._tbs != rhs_storage._tbs {return false}
        if _storage._signature != rhs_storage._signature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Link.TBS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Link.protoMessageName + ".TBS"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trustee_pub_key"),
    2: .same(proto: "expiration"),
    3: .standard(proto: "display_name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.trusteePubKey)
      case 2: try decoder.decodeSingularDoubleField(value: &self.expiration)
      case 3: try decoder.decodeSingularStringField(value: &self.displayName)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.trusteePubKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.trusteePubKey, fieldNumber: 1)
    }
    if self.expiration != 0 {
      try visitor.visitSingularDoubleField(value: self.expiration, fieldNumber: 2)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Link.TBS, rhs: Link.TBS) -> Bool {
    if lhs.trusteePubKey != rhs.trusteePubKey {return false}
    if lhs.expiration != rhs.expiration {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LinkRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LinkRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trustee_pub_key"),
    2: .standard(proto: "desired_display_name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.trusteePubKey)
      case 2: try decoder.decodeSingularStringField(value: &self.desiredDisplayName)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.trusteePubKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.trusteePubKey, fieldNumber: 1)
    }
    if !self.desiredDisplayName.isEmpty {
      try visitor.visitSingularStringField(value: self.desiredDisplayName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LinkRequest, rhs: LinkRequest) -> Bool {
    if lhs.trusteePubKey != rhs.trusteePubKey {return false}
    if lhs.desiredDisplayName != rhs.desiredDisplayName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Message: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Message"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tbs"),
    2: .same(proto: "signature"),
  ]

  fileprivate class _StorageClass {
    var _tbs: Message.TBS? = nil
    var _signature: Data = SwiftProtobuf.Internal.emptyData

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tbs = source._tbs
      _signature = source._signature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._tbs)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._signature)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._tbs {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._signature.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._signature, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Message, rhs: Message) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._tbs != rhs_storage._tbs {return false}
        if _storage._signature != rhs_storage._signature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Message.TBS: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Message.protoMessageName + ".TBS"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "chain"),
    2: .same(proto: "content"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.chain)
      case 2: try decoder.decodeSingularStringField(value: &self.content)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.chain.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.chain, fieldNumber: 1)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Message.TBS, rhs: Message.TBS) -> Bool {
    if lhs.chain != rhs.chain {return false}
    if lhs.content != rhs.content {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Subscribe: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Subscribe"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedBytesField(value: &self.channelID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channelID.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.channelID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Subscribe, rhs: Subscribe) -> Bool {
    if lhs.channelID != rhs.channelID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Unsubscribe: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Unsubscribe"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedBytesField(value: &self.channelID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.channelID.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.channelID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Unsubscribe, rhs: Unsubscribe) -> Bool {
    if lhs.channelID != rhs.channelID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Packet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Packet"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "msg"),
    2: .same(proto: "subscribe"),
    3: .same(proto: "unsubscribe"),
  ]

  fileprivate class _StorageClass {
    var _content: Packet.OneOf_Content?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _content = source._content
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: EncryptedMessage?
          if let current = _storage._content {
            try decoder.handleConflictingOneOf()
            if case .msg(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._content = .msg(v)}
        case 2:
          var v: Subscribe?
          if let current = _storage._content {
            try decoder.handleConflictingOneOf()
            if case .subscribe(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._content = .subscribe(v)}
        case 3:
          var v: Unsubscribe?
          if let current = _storage._content {
            try decoder.handleConflictingOneOf()
            if case .unsubscribe(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._content = .unsubscribe(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._content {
      case .msg(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .subscribe(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .unsubscribe(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Packet, rhs: Packet) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._content != rhs_storage._content {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
