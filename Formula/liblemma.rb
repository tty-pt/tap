class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-arm64.tar.gz"
    sha256 "b59c995ce3f9f008c060a36b2e9db61065961aa9b42c910ee175a0535fa72113"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.0.0/liblemma-1.0.0-brew-x86_64.tar.gz"
    sha256 "9515164e6bab9f38a5d8dc45552331020a67a34204ccc688227cca656d09f217"
  end
  version "1.0.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
