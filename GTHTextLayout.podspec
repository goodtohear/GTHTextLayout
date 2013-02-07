#
# Be sure to run `pod spec lint GTHTextLayout.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "GTHTextLayout"
  s.version      = "0.0.1"
  s.license  = 'MIT'
  s.summary      = "Arranges UILabels vertically for simple layouts."
  # s.description  = <<-DESC
  #                   An optional longer description of GTHTextLayout
  #
  #                   * Markdown format.
  #                   * Don't worry about the indent, we strip it!
  #                  DESC
  s.homepage     = "http://github.com/goodtohear/GTHTextLayout"

  # Specify the authors of the library, with email addresses. You can often find
  # the email addresses of the authors by using the SCM log. E.g. $ git log
  #
  s.author       = { "Michael Forrest" => "michael.forrest@gmail.com" }

  s.source       = { :git => "https://github.com/goodtohear/GTHTextLayout.git", :tag => "0.0.1" }

  s.platform     = :ios

  s.source_files = 'Classes', 'Classes/**/*.{h,m}'

  s.requires_arc = true

end
