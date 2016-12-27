class Testbrew < Formula
  desc ""
  homepage ""
  url "https://github.com/aary/testbrew/archive/v0.1.tar.gz"
  version "0.0"
  head "https://github.com/aary/testbrew.git"
  sha256 "ebea9210ed5548b0a11cd2c0aed28788d4306e8ad5f772400e64e5f4fbc2d11b"

  def install
    ohai("Building vader")
    system "make"
    bin.install "testbrew"
    ohai("Done!")
  end
end
