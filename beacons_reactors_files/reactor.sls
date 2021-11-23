revert-file:
  local.state.apply:
    - tgt: {{ data['data']['id'] }}
    - arg:
      - maintain_test_file