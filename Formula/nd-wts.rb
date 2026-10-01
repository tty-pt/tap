class NdWts < Formula
  desc "nd-wts binary package"
  homepage "https://github.com/tty-pt/nd-wts"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-wts/releases/download/v1.0.1/nd-wts-1.0.1-brew-arm64.tar.gz"
    sha256 "91fc084a3a9cd1b593808c5bdbb68846f5a2ebdd416c7db310025b0697960d6e"
  else
    url "https://github.com/tty-pt/nd-wts/releases/download/v1.0.1/nd-wts-1.0.1-brew-x86_64.tar.gz"
    sha256 "d62cbe52f49782fea97fad1a0ba9675c80a98f6b814eb51dd95e441c8b229ae5"
  end
  version "1.0.1"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
