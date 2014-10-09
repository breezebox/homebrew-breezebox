require "formula"

class Play225 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.5/play-2.2.5.zip"
  sha1 "122693bfcfa852d74124b88e8ba656d3ec930d84"

  conflicts_with "sox", :because => "both install `play` binaries"

  def install
    rm_rf Dir["**/*.bat"]
    libexec.install Dir["*"]
    bin.install_symlink libexec/"play"
  end
end
