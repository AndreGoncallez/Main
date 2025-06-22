name: Generate Pacman Contribution Graph

on:
  schedule:
    # Runs every 8 hours
    - cron: '0 */8 * * *'
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    name: Generate Contribution Graph
    steps:
      - uses: actions/checkout@v3
      - uses: abozanona/pacman-contribution-graph@v1.2.0
        with:
          github_user_name: ${{ github.repository_owner }}
          github_token: ${{ secrets.GITHUB_TOKEN }}
          outputs_folder: 'output'
