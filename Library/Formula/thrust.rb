require "formula"

# Documentation: https://github.com/thrust/thrust/wiki/Documentation
# Quick-start:   https://github.com/thrust/thrust/wiki/Quick-Start-Guide

class Thrust < Formula
  homepage "http://thrust.github.io"
  url "http://github.com/thrust/thrust/releases/v1.7.0/614/thrust-1.7.0.zip"
  sha1 "8647ad8cdc9a4d286711e9e60a5506fe980ae4a7"

  head "https://github.com/thrust/thrust.git"

  # depends_on "cmake" => :build
  #depends_on :x11 # if your formula requires any X11/XQuartz components

  # thrust is a deplate library and does not directly depend on anything
  # however, you will commonly want to install nvidia CUDA to use it
  #depends_on :cuda

  def install
    # thrust is recommended to be installed into the CUDA include directory
    # but in the spirit of homebrew, I suggest to use the default installation directory
    
    #TODO: is this required ???
    # ENV.deparallelize  # if your formula fails when building in parallel
    
    system ""
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test thrust`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"

  end
end
