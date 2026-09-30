class NdCore < Formula
  desc "nd-core binary package"
  homepage "https://github.com/tty-pt/nd-core"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-core/releases/download/v1.0.2/nd-core-1.0.2-brew-arm64.tar.gz"
    sha256 "896f30952ab4c340872fc7909c2e19f12dc62ab69e1e78286c87f3604457945d"
  else
    url "https://github.com/tty-pt/nd-core/releases/download/v1.0.2/nd-core-1.0.2-brew-x86_64.tar.gz"
    sha256 "6e37c9a5faf8e30a14c88eae4d6491b9356e1c841413793ec711fe714cfa8483"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
