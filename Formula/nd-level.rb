class NdLevel < Formula
  desc "nd-level binary package"
  homepage "https://github.com/tty-pt/nd-level"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-arm64.tar.gz"
    sha256 "2fc4219020866d1d4d8ef5f4fc46c106aca9216c33ac692bc9cf10e3cf2f86be"
  else
    url "https://github.com/tty-pt/nd-level/releases/download/v1.0.1/nd-level-1.0.1-brew-x86_64.tar.gz"
    sha256 "cd331f83dab8f73a609a3360357130f1fef8bfcac5dabd487301eaf781eddbfb"
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
