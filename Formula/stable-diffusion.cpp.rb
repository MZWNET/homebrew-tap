class StableDiffusionCpp < Formula
  version "5e4579c"
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  url "https://github.com/MZWNET/actions/releases/download/sd-master-483-5e4579c/sd-master-483-5e4579c-bin-macos-metal-arm64.zip"
  sha256 "769845226fab157155a8d6d11c92bd1aafd73cae8c3ae5747d2d7ba34a010da5"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
