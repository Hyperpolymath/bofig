defmodule EvidenceGraph.Repo do
  use Ecto.Repo,
    otp_app: :evidence_graph,
    adapter: Ecto.Adapters.Postgres

  # Note: This repo is ONLY for user authentication.
  # All evidence graph data is stored in ArangoDB.
end
