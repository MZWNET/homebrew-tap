class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-758-c674225/sd-master-758-c674225-bin-macos-metal-arm64.zip"
  version "0.0.758_c674225"
  sha256 "b557b558d6e1910fe90b5e4a97a75af2f5cc5bb6a1f40ace3ed193d55e40cabe"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
