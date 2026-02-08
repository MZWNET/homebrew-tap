class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  version "0.0.495_f0f641a"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-495-f0f641a/sd-master-495-f0f641a-bin-macos-metal-arm64.zip"
  sha256 "2baa0a11d028088e2fe18172a5d07f06644ae2e62f861dea38f8668f76173bc2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
