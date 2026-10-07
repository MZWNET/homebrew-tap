class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-945-a1ded76/sd-master-945-a1ded76-bin-macos-metal-arm64.zip"
  version "0.0.945_a1ded76"
  sha256 "64e4120830183a8bd37b2d43b71c2c99fce635451c0c7b11afb69cc6735dd0b4"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
