class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.wm':}
  dockeragent::node {'db.puppet.wm':}
}
