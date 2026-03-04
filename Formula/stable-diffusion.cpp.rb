class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.517_ba35dd7"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-517-ba35dd7/sd-master-517-ba35dd7-bin-macos-metal-arm64.zip"
  sha256 "c045d3eed3e8d24d0dfe5d2e368ce22393f280f0b9e317ea2767393f661e981d"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
