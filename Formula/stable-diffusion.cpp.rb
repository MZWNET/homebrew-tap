class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1106-532d2c1/sd-master-1106-532d2c1-bin-macos-metal-arm64.zip"
  version "0.0.1106_532d2c1"
  sha256 "7e0230b1166cf086555518afef99e1fc462c086ff1e637122525ef5c24e3d339"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
