class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-841-6b3edaa/sd-master-841-6b3edaa-bin-macos-metal-arm64.zip"
  version "0.0.841_6b3edaa"
  sha256 "9113a5d0413a554322f6c336a2a79663381e4e9792efc6607aa8e8ec915f844a"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
