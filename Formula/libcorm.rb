class Libcorm < Formula
  desc "libcorm binary package"
  homepage "https://github.com/tty-pt/libcorm"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-arm64.tar.gz"
    sha256 "4b7314ee42bf6bfdb9df5e79f73f3054354e071b1e5a2a5ed483c4539dcbf0d3"
  else
    url "https://github.com/tty-pt/libcorm/releases/download/v2.0.0/libcorm-2.0.0-brew-x86_64.tar.gz"
    sha256 "ab2ccf6105fb545e07c9399ad4505a416fa8972f7562aea6517263a1e2c12c5d"
  end
  version "2.0.0"
  depends_on "libqsys"
  depends_on "xxhash"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
