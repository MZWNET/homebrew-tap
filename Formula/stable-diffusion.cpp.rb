class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.507_b314d80"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-507-b314d80/sd-master-507-b314d80-bin-macos-metal-arm64.zip"
  sha256 "8be0d1a0e882e570e9fde8f99b6217fd59cf0bfe06294deed6525ef7f2569b8e"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
