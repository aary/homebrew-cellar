class Testbrew < Formula
  desc ""
  homepage ""
  url "https://github.com/aary/testbrew/archive/v0.2.tar.gz"
  version "0.0"
  head "https://github.com/aary/testbrew.git"
  sha256 "ebea9210ed5548b0a11cd2c0aed28788d4306e8ad5f772400e64e5f4fbc2d11b"

  def install
    # system "make"
    # system("g++ -std=c++14 -O3 test.cpp -o testbrew")
    system "git", "submodule", "update", "--init", "--recursive"
    system "g++", "-std=c++14",
           "-O3",
           "-Wall",
           "-Werror",
           "-Wextra",
           "-pedantic",
           "-Wvla",
           "test.cpp",
           "test-submodule/something.cpp",
           "-o",
           "testbrew"
    bin.install "testbrew"
    ohai("Done!")
  end
end
