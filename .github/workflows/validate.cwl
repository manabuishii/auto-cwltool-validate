name: validate
on:
  push:
    tags:
      - v*
    branches:
      - '**'
  pull_request:

jobs:
  test:
    name: Validate
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
          uses: actions/checkout@v2

      - name: Set up Python
          uses: actions/setup-python@v2
          with:
            python-version: 3.9.7

      # TODO: cache

      - name: cwltool install
          run: pip install cwltool==3.1.20210816212154

      - name: Test code
          run: cwltool --validate message.cwl