class StableDiffusionCpp < Formula
  version "7010bb4"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-471-7010bb4/sd-master-471-7010bb4-bin-macos-metal-arm64.zip"
  sha256 "9cce3f47d4ba9673771103197698b83bdb97892219546f00481d10a7fd6c65cb"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
