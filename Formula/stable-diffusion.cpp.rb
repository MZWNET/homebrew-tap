class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1086-465adf3/sd-master-1086-465adf3-bin-macos-metal-arm64.zip"
  version "0.0.1086_465adf3"
  sha256 "c119d4aa604303692e3e3c9e516adfe1ffc42a85fda8c91bc49c1815156a4f97"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
