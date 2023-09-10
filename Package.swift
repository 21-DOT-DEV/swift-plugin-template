// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "template",
    products: [
        .plugin(
            name: "template",
            targets: [
                "TemplatePlugin"
            ]
        )
    ],
    dependencies: [],
    targets: [
        .plugin(
            name: "TemplatePlugin",
            capability: .command(
                intent: .custom(
                    verb: "template",
                    description: "Execute commands defined by template."
                )
            ),
            dependencies: ["template"]
        ),
//        .binaryTarget(name: "template", path: "template.artifactbundle.zip"),
        .binaryTarget(
            name: "template",
            url: "https://github.com/GigaBitcoin/template-plugin/releases/download/1.4.10/template.artifactbundle.zip",
            checksum: "bd2110272bffbfcbacd27d9b952d48f25aec3174c80dd5205b6b91fb3b5a8d6d"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
