class Libbud < Formula
  desc "libbud binary package"
  homepage "https://github.com/tty-pt/libbud"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.1/libbud-1.0.1-brew-arm64.tar.gz"
    sha256 "8c204c634b626b0d4f21269b0f1cbf4bc11837f0e7ef4c513f53e48d555a2641"
  else
    url "https://github.com/tty-pt/libbud/releases/download/v1.0.1/libbud-1.0.1-brew-x86_64.tar.gz"
    sha256 "07103bc903b57bd7968cd9beeb58b0285988d365cc881858d8a12ed42a1d8e7c"
  end
  version "1.0.1"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
