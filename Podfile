# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

workspace 'MovieSampleApp'

project 'MovieApp.xcodeproj'
project 'Helpers/Helpers.xcodeproj'

use_frameworks!

target 'MovieApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  project 'MovieApp.xcodeproj'

  # Pods for MovieSampleApp

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
