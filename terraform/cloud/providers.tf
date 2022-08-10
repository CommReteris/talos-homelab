terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.21.0"
    }
    random     = {
      version = "~> 3.3.0"
    }
  }
}

provider "cloudflare" {}
