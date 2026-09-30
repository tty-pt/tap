class NdCore < Formula
  desc "nd-core binary package"
  homepage "https://github.com/tty-pt/nd-core"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-core/releases/download/v1.0.0/nd-core-1.0.0-brew-arm64.tar.gz"
    sha256 "d0fc3e043ed7617949307d03ec8c19b1900e3406b6a44355689315c232bac257"
  else
    url "https://github.com/tty-pt/nd-core/releases/download/v1.0.0/nd-core-1.0.0-brew-x86_64.tar.gz"
    sha256 "cf9dffbce5084b272b004019fcfb54d7940cba657f37291c5fbdc844ece3841a"
  end
  version "1.0.0"
  depends_on "axil-nd"
  depends_on "libxylem"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
