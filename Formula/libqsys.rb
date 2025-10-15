class Libqsys < Formula
  desc "libqsys binary package"
  homepage "https://github.com/tty-pt/libqsys"
  if Hardware::CPU.arm?
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-arm64.tar.gz"
    sha256 "452a180eb81841d95ebc73eb3ee8aed32cedf96247b14b1c217c98cbee3c5ab2"
  else
    url "https://github.com/tty-pt/libqsys/releases/download/v0.0.12/libqsys-0.0.12-brew-x86_64.tar.gz"
    sha256 "7c293990e5768d01e29890d18950f2e6793d075101e28541bc8191e252935157"
  end
  version "0.0.12"

  def install
    prefix.install Dir["*"]
  end

  test do
    system "true"
  end
end
