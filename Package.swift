import PackageDescription


let package = Package(
  name: "NestTestSuite",
  dependencies: [
    .Package(url: "https://github.com/nestproject/Nest.git", majorVersion: 0, minor: 2),
    .Package(url: "https://github.com/nestproject/Inquiline.git", majorVersion: 0, minor: 2),
    .Package(url: "https://github.com/kylef/Ploughman.git", majorVersion: 0, minor: 2),
    .Package(url: "https://github.com/kylef/Spectre.git", majorVersion: 0, minor: 6),
    .Package(url: "https://github.com/kylef/Requests.git", majorVersion: 0, minor: 1),
  ]
)
