import Inquiline
import Nest


public func application(request: RequestType) -> ResponseType {
  switch request.method {
  case "POST":
    if let content = request.content {
      return Response(.Ok, contentType: "text/plain", content: "Hello " + content)
    } else {
      return Response(.NotImplemented, contentType: "text/plain", content: "Request body was empty")
    }
  default:
    return Response(.Ok, contentType: "text/plain", content: "Hello World")
  }
}
