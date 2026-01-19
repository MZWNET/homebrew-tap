class StableDiffusionCpp < Formula
  version "61659ef"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-474-61659ef/sd-master-474-61659ef-bin-macos-metal-arm64.zip"
  sha256 "261b7f7e880354b5482a2d55e7afac5ce2ce07af990249c115219f5dcf04d089"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
