class Floorplan < Formula
  desc "floorplan"
  homepage "https://github.com/julioz/FloorPlan"
  url "https://github.com/julioz/FloorPlan/releases/download/v0.4/floorplan-cli-0.4.zip"
  sha256 "3d114d8e94d3f8ba0364f44008f573eeada0b03e58ff104352d67f1126b13974"

  bottle :unneeded

  depends_on "kotlin"

  def install
    libexec.install Dir["*"] # Put the extracted files in to the 'private' libexec folder
    bin.install_symlink "#{libexec}/bin/floorplan-cli"
  end
end
