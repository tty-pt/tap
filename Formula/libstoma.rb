class Libstoma < Formula
  desc "libstoma binary package"
  homepage "https://github.com/tty-pt/libstoma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-arm64.tar.gz"
    sha256 "7f339c4bed5138c917ca4e88cffaf1a7f8ad9a5f084aa41fcc0014ddf9c6cb02"
  else
    url "https://github.com/tty-pt/libstoma/releases/download/v1.0.0/libstoma-1.0.0-brew-x86_64.tar.gz"
    sha256 "c2ecdacee9b4169803c4e4fb44a6c8cbb27db67bb3af1e21b2a979d1227d507c"
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
