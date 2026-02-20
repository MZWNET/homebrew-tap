class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.505_c5eb1e4"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-505-c5eb1e4/sd-master-505-c5eb1e4-bin-macos-metal-arm64.zip"
  sha256 "08dd0354bad992de17234db196c58897b8db104ab65d874fde452001c06ee9cf"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
