
require "formula"

class Play225 < Formula
  homepage "http://www.playframework.org/"
  url "http://downloads.typesafe.com/play/2.2.5/play-2.2.5.zip"
  sha1 "e4358fbf77e81de83bd2abbddf14af10d3cff15b"

  conflicts_with "sox", :because => "both install `play` binaries"

  def install
    # system "./framework/build", "publish-local" if build.head?

    # remove Windows .bat files
    rm_rf Dir['**/*.bat']
    # rm Dir["#{buildpath}/**/*.bat"] if build.head?

    libexec.install Dir['*']
    bin.install_symlink libexec/'play' => "play2.2.5"
  end

end


