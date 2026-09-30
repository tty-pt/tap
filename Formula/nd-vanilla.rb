class NdVanilla < Formula
  desc "nd-vanilla binary package"
  homepage "https://github.com/tty-pt/nd-vanilla"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-vanilla/releases/download/v1.0.1/nd-vanilla-1.0.1-brew-arm64.tar.gz"
    sha256 "c2fae15829f820558aff4d66330901fea837a6d1f6e3fb7954aa4564851ee0f1"
  else
    url "https://github.com/tty-pt/nd-vanilla/releases/download/v1.0.1/nd-vanilla-1.0.1-brew-x86_64.tar.gz"
    sha256 "eab667977c2b93b7bbc39570c1f6a48af44a06db74cb1c12797521abb337afc0"
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
