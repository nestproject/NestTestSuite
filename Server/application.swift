import Inquiline
import Nest


public func application(request: RequestType) -> ResponseType {
  switch request.method {
  case "POST":
    if var payload = request.body {
      var buffer = [CChar]()
      while let chunk = payload.next() {
        buffer.appendContentsOf(chunk.map({ CChar($0) }))
      }
      buffer.append(0)
      if let body = String.fromCString(buffer) {
        return Response(.Ok, contentType: "text/plain", content: "Hello " + body)
      } else {
        return Response(.BadRequest, contentType: "text/plain", content: "Request body was broken")
      }
    } else {
      return Response(.NotImplemented, contentType: "text/plain", content: "Request body was empty")
    }
  default:
    return Response(.Ok, contentType: "text/plain", content: "Hello World")
  }
}
