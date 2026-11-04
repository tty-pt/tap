class Libjoint < Formula
  desc "libjoint binary package"
  homepage "https://github.com/tty-pt/libjoint"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.3/libjoint-1.6.3-brew-arm64.tar.gz"
    sha256 "0049903c92b74261e1b8ec09de33c97915db01960665282a3a3652f8a3ddcd6a"
  else
    url "https://github.com/tty-pt/libjoint/releases/download/v1.6.3/libjoint-1.6.3-brew-x86_64.tar.gz"
    sha256 "669379e46daff4a173035d5ab01ebe3f9ea711286a9fe14bd67f11233c18ac19"
  end
  version "1.6.3"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
