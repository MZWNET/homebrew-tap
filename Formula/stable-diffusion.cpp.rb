class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1053-5a1ba5d/sd-master-1053-5a1ba5d-bin-macos-metal-arm64.zip"
  version "0.0.1053_5a1ba5d"
  sha256 "9de1693cc5e7e867b377c59a6a1db04c2fae44e1a181fdffb8d3ef59a5cb8a6a"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
