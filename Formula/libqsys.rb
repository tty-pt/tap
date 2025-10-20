class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-arm64.tar.gz"
    sha256 "a802e9cfbbb380c77598b1ad06737c977b4039537ff0696b522e1d464c58661f"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.1.0/libqsys-0.1.0-brew-x86_64.tar.gz"
    sha256 "6edb75f4c97f3284d77be5cdb400805044b8b2d4e909addbd8731e142ddf0667"
  end
  version "0.1.0"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
