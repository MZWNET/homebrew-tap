class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1052-f5df5f8/sd-master-1052-f5df5f8-bin-macos-metal-arm64.zip"
  version "0.0.1052_f5df5f8"
  sha256 "067876178b07808691b80657270efe14e870b94a6d3a4aac51edf316c259bd68"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
