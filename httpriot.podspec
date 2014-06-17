Pod::Spec.new do |s|

  s.name         = "httpriot"
  s.version      = "0.6.12"
  s.summary      = "Simple HTTP Rest Library for iPhone and Cocoa projects."

  s.description  = <<-DESC
                   A longer description of httpriot in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/ognen/httpriot/tree/"
  s.license      = "MIT (example)"
  s.author       = { "Ognen Ivanovski" => "" }

  s.source       = { :git => "https://github.com/elchbenny/httpriot.git" }

  s.source_files  = "Source/HTTPRiot/*.{h,m}","Source/HTTPRiot/Extensions/*.{h,m}","Source/HTTPRiot/Formatters/*.{h,m}","Source/HTTPRiot/Utilities/*.{h,m}","Source/HTTPRiot/Vendor/AIXMLSerialization/*.{h,m}"

  s.requires_arc = false

  s.dependency "KissXML"
  s.dependency "SBJson", "~> 2.2.3"

end
