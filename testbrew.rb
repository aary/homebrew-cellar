class Testbrew < Formula
  desc ""
  homepage ""
  head "https://github.com/aary/testbrew.git"
  sha256 "ebea9210ed5548b0a11cd2c0aed28788d4306e8ad5f772400e64e5f4fbc2d11b"

  def install
    # system "make"
    # system("g++ -std=c++14 -O3 test.cpp -o testbrew")
    system "brew", "install", "--HEAD", "facebook/fb/buck"
    system "git", "submodule", "update", "--init", "--recursive"
    system "buck", "build", "testbrew"
    # system "g++", "-std=c++14",
           # "-O3",
           # "-Wall",
           # "-Werror",
           # "-Wextra",
           # "-pedantic",
           # "-Wvla",
           # "test.cpp",
           # "test-submodule/something.cpp",
           # "-o",
           # "testbrew"
    bin.install "buck-out/gen/testbrew/testbrew"
    ohai("Done!")
  end
end
