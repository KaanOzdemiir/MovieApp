# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

workspace 'MovieSampleApp'

project 'MovieApp.xcodeproj'
project 'Helpers/Helpers.xcodeproj'
project 'API/API.xcodeproj'

use_frameworks!

# Pod Variables
$alamofire = pod 'Alamofire', '~> 5.4'
$kingfisher = pod 'Kingfisher', '~> 7.0'

target 'MovieApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  project 'MovieApp.xcodeproj'

  # Pods for MovieSampleApp

  $alamofire
  $kingfisher
  
  target 'MovieAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MovieAppUITests' do
    # Pods for testing
  end

end

target 'Helpers' do
  # Comment the next line if you don't want to use dynamic frameworks
  project 'Helpers/Helpers.xcodeproj'

  # Pods for Helpers

  target 'HelpersTests' do
    # Pods for testing
  end

end

target 'API' do
  # Comment the next line if you don't want to use dynamic frameworks
  project 'API/API.xcodeproj'

  # Pods for Helpers

  target 'APITests' do
    # Pods for testing
  end

end
