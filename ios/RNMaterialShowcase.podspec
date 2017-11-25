
Pod::Spec.new do |s|
  s.name         = "RNMaterialShowcase"
  s.version      = "1.0.0"
  s.summary      = "RNMaterialShowcase"
  s.description  = <<-DESC
                  RNMaterialShowcase
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNMaterialShowcase.git", :tag => "master" }
  s.source_files  = "RNMaterialShowcase/**/*.{h,m}"
  s.requires_arc = true


  #s.dependency "others"

end

  