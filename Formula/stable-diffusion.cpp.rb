class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-669-2d40a8b/sd-master-669-2d40a8b-bin-macos-metal-arm64.zip"
  version "0.0.669_2d40a8b"
  sha256 "935530b6a6c1d0fb2eeb28614cde2179d69006485311d5496df1de451a687e48"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
