class NdDrink < Formula
  desc "nd-drink binary package"
  homepage "https://github.com/tty-pt/nd-drink"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.7/nd-drink-1.0.7-brew-arm64.tar.gz"
    sha256 "1f9f85d657f73d2e9b6fbbdef64650e9531dc8d1a00756ac34b407bedc42e700"
  else
    url "https://github.com/tty-pt/nd-drink/releases/download/v1.0.7/nd-drink-1.0.7-brew-x86_64.tar.gz"
    sha256 "168b703f6007a3a298d151399681473e14334517103c21afa9b9e543bcb09f06"
  end
  version "1.0.7"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-mortal"
  depends_on "nd-core"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
