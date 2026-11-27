class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-1141-e637c7b/sd-master-1141-e637c7b-bin-macos-metal-arm64.zip"
  version "0.0.1141_e637c7b"
  sha256 "683aaa09ef67993f4a37b155df6d30121c5b8e81335e9739b2ed611bd18dd515"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
