class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-525-d6dd6d7/sd-master-525-d6dd6d7-bin-macos-metal-arm64.zip"
  version "0.0.525_d6dd6d7"
  sha256 "cdf9b1f90c9ea6bade8676ca751886a4d8ec3e57c874cc0bbb8436195b60a92d"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
