class Floorplan < Formula
  desc "floorplan"
  homepage "https://github.com/julioz/FloorPlan"
  url "https://github.com/julioz/FloorPlan/releases/download/v0.3/floorplan-cli-0.3.zip"
  sha256 "33ea10bfb74d8e9c802913f2025f4ff2beb808b93c308d1b92a4617c86ec5d01"

  bottle :unneeded

  depends_on "kotlin"

  def install
    libexec.install Dir["*"] # Put the extracted files in to the 'private' libexec folder
    bin.install_symlink "#{libexec}/bin/floorplan-cli"
  end
end
