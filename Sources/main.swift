import Requests
import Inquiline
import Commander
import Ploughman
import Spectre


var response: Response?


class NestTestSuite : Ploughman {
  var base: String = "http://localhost:8080"

  override func run(parser: ArgumentParser) throws {
    if let host = try parser.shiftValueForOption("host") {
      base = host
    }

    try super.run(parser)
  }
}

let suite = NestTestSuite()


suite.when("^I make a ([A-Z]+) request to (.+)$") { match in
  let method = match.groups[1]
  let path = match.groups[2]
  let url = "\(suite.base)\(path)"
  response = try request(method: method, url: url)
}


suite.when("^I make a ([A-Z]+) request with body '(.*)' to (.+)$") { match in
  let method = match.groups[1]
  let body = match.groups[2]
  let path = match.groups[3]
  let url = "\(suite.base)\(path)"
  response = try request(method: method, url: url, body: body)
}


suite.then("^I should have a (\\d\\d\\d) response$") { match in
  let status = Int(match.groups[1])!
  try expect(response?.status.rawValue) == status
}


suite.then("^I should see the header '(.*)' with the value '(.*)'") { match in
  let key = match.groups[1]
  let value = match.groups[2]

  try expect(response?[key]) == value
}


suite.then("^The contents of the body should be '(.*)'") { match in
  let body = match.groups[1]

  guard var payload = response?.body else {
      throw failure("response has no payload")
  }
  var buffer = [CChar]()
  while let chunk = payload.next() {
      buffer.appendContentsOf(chunk.map({ CChar($0) }))
  }
  buffer.append(0)
  try expect(String.fromCString(buffer)) == body
}


suite.run()
