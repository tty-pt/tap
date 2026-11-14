class Liblemma < Formula
  desc "liblemma binary package"
  homepage "https://github.com/tty-pt/liblemma"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.0/liblemma-1.4.0-brew-arm64.tar.gz"
    sha256 "374784e99409872f7c8429083ef64930aca807ae3ca276231bd581f0d17a048a"
  else
    url "https://github.com/tty-pt/liblemma/releases/download/v1.4.0/liblemma-1.4.0-brew-x86_64.tar.gz"
    sha256 "ce0d958005da7909d358870b5870229022f49649a05c2aee2a01e86ad0f8fbe3"
  end
  version "1.4.0"
  depends_on "libcorm"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
