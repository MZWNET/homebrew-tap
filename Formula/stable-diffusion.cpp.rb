class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.504_636d3cb"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-504-636d3cb/sd-master-504-636d3cb-bin-macos-metal-arm64.zip"
  sha256 "64a8ea3919cb1f2deac03d8035dda78e076f6f361b587b4711ddf7e34c90b4d4"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
