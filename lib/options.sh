#! /usr/bin/env bash

# Defines command line prompt options.

# Process option selection.
# Parameters: $1 (required) - The option to process.
process_option() {
  case $1 in
    'B')
      bin/create_boot_disk;;
    'b')
      bin/install_basics;;
    't')
      bin/install_dev_tools;;
    'hf')
      bin/install_homebrew_formulas;;
    'hc')
      bin/install_homebrew_casks;;
    'm')
      bin/install_app_store;;
    'a')
      bin/install_applications;;
    'x')
      bin/install_extensions;;
    'df')
      bin/install_dotfiles;;
    'np')
      bin/install_node_packages;;
    'rg')
      bin/install_ruby_gems;;
    'rc')
      bin/install_rust_crates;;
    'd')
      bin/install_defaults;;
    'i')
      caffeinate_machine
      bin/install_basics
      bin/install_dev_tools
      bin/install_homebrew_formulas
      bin/install_homebrew_casks
      bin/install_app_store
      bin/install_applications
      bin/install_extensions
      bin/install_dotfiles
      bin/install_node_packages
      bin/install_ruby_gems
      bin/install_rust_crates
      bin/install_defaults
      clean_work_path;;
    'R')
      caffeinate_machine
      bin/restore_backup;;
    'c')
      verify_homebrew_formulas
      verify_homebrew_casks
      verify_app_store_applications
      verify_applications
      verify_extensions
      verify_node_packages
      verify_ruby_gems
      verify_rust_crates;;
    'C')
      caffeinate_machine;;
    'w')
      clean_work_path;;
    'q');;
    *)
      printf "ERROR: Invalid option.\n";;
  esac
}
export -f process_option
