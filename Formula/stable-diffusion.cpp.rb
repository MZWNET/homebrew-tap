class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-593-3d6064b/sd-master-593-3d6064b-bin-macos-metal-arm64.zip"
  version "0.0.593_3d6064b"
  sha256 "ed0dca8acef11d674e1dc3634f504dd66685a49a492f13f46af6308818c6a3e7"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
