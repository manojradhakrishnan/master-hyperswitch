# Hyperswitch DeepWiki Guide

This guide explains how to use the DeepWiki with the Hyperswitch master repository to query and understand the Hyperswitch ecosystem holistically.

## What is DeepWiki?

DeepWiki is a powerful knowledge base platform that allows you to index, search, and navigate through complex codebases and documentation. By integrating the various Hyperswitch repositories into a single DeepWiki, developers can gain a comprehensive understanding of the entire ecosystem without having to switch between multiple repositories.

## Setting Up DeepWiki for Hyperswitch

To set up DeepWiki for the Hyperswitch ecosystem:

1. Visit your DeepWiki instance URL
2. Add the following repositories:
   - `https://github.com/juspay/hyperswitch`
   - `https://github.com/juspay/hyperswitch-control-center`
   - `https://github.com/juspay/hyperswitch-docs`
   - `https://github.com/juspay/hyperswitch-web`
   - `https://github.com/juspay/hyperswitch-card-vault`
   - The URL of this master repository
3. Configure the indexing settings to include all branches and necessary file types
4. Start the indexing process

## Querying the Hyperswitch Ecosystem

### Cross-Repository Search

DeepWiki enables you to search across all Hyperswitch repositories simultaneously. For example:

- Search for payment implementation details across both the Core backend and Web SDK
- Find how a specific feature is documented and implemented
- Track how data flows between different components

Example searches:
- `payment_intent implementation`
- `3DS authentication flow`
- `connector integration`

### Understanding Component Interactions

To understand how different components interact:

1. Search for interface definitions in the Core repository
2. Find their implementations in the respective repositories
3. Follow the data flow from one component to another

Example queries:
- `card vault API interface`
- `SDK communication with core`
- `routing configuration flow`

### Finding Implementation Examples

To find examples of how to implement or use a feature:

1. Search for the feature name across all repositories
2. Filter results to include code samples and documentation
3. Look for test cases that demonstrate the feature

Example queries:
- `saved card implementation example`
- `payment routing test cases`
- `connector configuration example`

### Architecture Deep Dives

To understand the architecture of specific components:

1. Start with the architecture documentation in this master repository
2. Drill down into specific components using targeted searches
3. Trace the implementation across repositories

Example queries:
- `payment retry architecture`
- `card vault security model`
- `connector abstraction layer`

## DeepWiki Features for Hyperswitch

### Code Navigation

Navigate through the codebase with:
- Jump to definition
- Find references
- View call hierarchies

This is particularly useful for understanding how:
- The Core routes payments to connectors
- The SDK communicates with the Core
- The Control Center configures routing rules

### Documentation Integration

DeepWiki integrates documentation from all repositories:
- API references
- Architecture diagrams
- Implementation guides
- Tutorials

This provides a unified view of both how the system works and how to use it.

### Semantic Search

DeepWiki's semantic search understands the context of your queries, allowing for:
- Natural language questions about the codebase
- Finding related concepts even when exact terms aren't matched
- Discovering connections between components

Example queries:
- "How does payment routing work?"
- "What happens when a payment fails?"
- "How is payment method information secured?"

## Useful Queries for Common Tasks

### For New Developers

- "Hyperswitch architecture overview"
- "Local development setup guide"
- "Payment processing flow"

### For Integration Developers

- "Web SDK integration guide"
- "Payment API reference"
- "Available payment methods"

### For DevOps Engineers

- "Deployment architectures"
- "Configuration options"
- "Scaling guidelines"

### For Contributors

- "Connector implementation guide"
- "Testing framework"
- "Code style guidelines"

## Keeping DeepWiki Updated

The DeepWiki instance is automatically updated when:
- New commits are pushed to any repository
- Documentation is updated
- New repositories are added to the Hyperswitch ecosystem

This ensures that your knowledge base always reflects the current state of the Hyperswitch platform.

## Additional Resources

- [DeepWiki User Guide](https://deepwiki.io/docs/user-guide)
- [Hyperswitch Documentation](https://hyperswitch.io/docs)
- [Hyperswitch GitHub Discussions](https://github.com/juspay/hyperswitch/discussions) 