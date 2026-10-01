class NdLevel < Formula
  desc "nd-level binary package"
  homepage "https://github.com/tty-pt/nd-level"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-arm64.tar.gz"
    sha256 "651cd15c4ec9f524dec0d066bc3cec600a9c3dc73b5537727aa8e10138c657a6"
  else
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-x86_64.tar.gz"
    sha256 "037d4326d61d56a987dd4f0f0e0982e48a653c71e774d3da9c0da3c59efd1336"
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
