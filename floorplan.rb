class FloorPlan < Formula
  desc "floorplan"
  homepage "https://github.com/julioz/FloorPlan"
  url "https://github.com/julioz/FloorPlan/releases/download/v0.3/floorplan-cli-0.3.zip"
  sha256 "40def809740d3b86e56ee48f9892d483a22329f87f75900cc6a77faa32168ca8"

  bottle :unneeded

  depends_on "kotlin"

  def install
    libexec.install Dir["*"] # Put the extracted files in to the 'private' libexec folder
    bin.install_symlink "#{libexec}/bin/floorplan-cli"
  end
end
