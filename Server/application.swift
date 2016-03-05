import Inquiline
import Nest


public func application(request: RequestType) -> ResponseType {
  switch request.method {
  case "POST":
    return Response(.Ok, contentType: "text/plain", body: "Hello " + request.body!)
  default:
    return Response(.Ok, contentType: "text/plain", body: "Hello World")
  }
}
