class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-621-baf7eda/sd-master-621-baf7eda-bin-macos-metal-arm64.zip"
  version "0.0.621_baf7eda"
  sha256 "ec2d2b9bdda9b779009b5fa89c42a2a14f9d356ce5a9acb03cde06f0ff99a962"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
