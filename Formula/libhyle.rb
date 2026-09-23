class Libhyle < Formula
  desc "libhyle binary package"
  homepage "https://github.com/tty-pt/libhyle"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-arm64.tar.gz"
    sha256 "7d9942111d35db80590f6da6bbd6a68eb5b0c39744f173aed48c5b8839b0c83b"
  else
    url "https://github.com/tty-pt/libhyle/releases/download/v1.3.0/libhyle-1.3.0-brew-x86_64.tar.gz"
    sha256 "0445335f7637b455314dcf8b50b65e72a38ce6fb6c7be21d72c6e50e3160912f"
  end
  version "1.3.0"
  depends_on "libcorm"
  depends_on "libstoma"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
