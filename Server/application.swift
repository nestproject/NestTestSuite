import Inquiline
import Nest


public func application(request: RequestType) -> ResponseType {
  return Response(.Ok, contentType: "text/plain", body: "Hello World")
}
