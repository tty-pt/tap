class NdMortal < Formula
  desc "nd-mortal binary package"
  homepage "https://github.com/tty-pt/nd-mortal"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-mortal/releases/download/v1.0.2/nd-mortal-1.0.2-brew-arm64.tar.gz"
    sha256 "ad86d79f2cedd79a9ef57e9c54dae66fc35f5f452dcae459f16594a72e2d8a1d"
  else
    url "https://github.com/tty-pt/nd-mortal/releases/download/v1.0.2/nd-mortal-1.0.2-brew-x86_64.tar.gz"
    sha256 "b15700cd4844afe589d56d16bc52c81a08ca751dfedad4af4b4f88ef56d96737"
  end
  version "1.0.2"
  depends_on "axil-nd"
  depends_on "libxylem"
  depends_on "nd-attr"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
