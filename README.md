# Hyperswitch Master Repository

[![Hyperswitch Logo](https://raw.githubusercontent.com/juspay/hyperswitch/main/docs/imgs/Hyperswitch-logo-dark.svg)](https://hyperswitch.io)

## Overview

This repository serves as a central index for all Hyperswitch projects, the open-source payments orchestration platform built to make payments fast, reliable, and affordable. Hyperswitch provides a single API to access the entire payments ecosystem and its features.

## Hyperswitch Components

Hyperswitch consists of several key components that work together to deliver a complete payment orchestration solution:

### 1. [Hyperswitch Core](https://github.com/juspay/hyperswitch)

The backend engine of Hyperswitch, written in Rust. This component handles payment processing, routing, and orchestration.

- **Repository**: [github.com/juspay/hyperswitch](https://github.com/juspay/hyperswitch)
- **Features**:
  - Payment processing with support for various payment flows
  - Comprehensive support for authorization, authentication, void, and capture workflows
  - Post-payment process management (refunds, chargebacks)
  - Optimized payment routing with customizable workflows
  - Support for rule-based routing, volume distribution, and fallback handling
  - Intelligent retry mechanisms for failed payments

### 2. [Hyperswitch Control Center](https://github.com/juspay/hyperswitch-control-center)

The administrative dashboard that provides a user interface for managing the entire payments stack.

- **Repository**: [github.com/juspay/hyperswitch-control-center](https://github.com/juspay/hyperswitch-control-center)
- **Features**:
  - No-code interface for payment stack management
  - Workflow creation for routing and payment retries
  - Condition definition for 3DS, FRM, and surcharge modules
  - Transaction, refund, and chargeback operations management
  - Detailed analytics and insights into payment performance

### 3. [Hyperswitch Web SDK](https://github.com/juspay/hyperswitch-web)

The frontend SDK for web applications that provides a unified payment experience.

- **Repository**: [github.com/juspay/hyperswitch-web](https://github.com/juspay/hyperswitch-web)
- **Features**:
  - Unified payment experience across various payment methods
  - Support for cards, wallets, BNPL, bank transfers, and more
  - Seamless integration with web applications
  - Compatible with saved payment methods when paired with the locker

### 4. [Hyperswitch Card Vault](https://github.com/juspay/hyperswitch-card-vault)

The secure vault for storing sensitive payment information.

- **Repository**: [github.com/juspay/hyperswitch-card-vault](https://github.com/juspay/hyperswitch-card-vault)
- **Features**:
  - Secure storage of payment method details
  - PCI-compliant infrastructure
  - Integration with the SDK for saved payment methods

### 5. [Hyperswitch Documentation](https://github.com/juspay/hyperswitch-docs)

The comprehensive documentation for Hyperswitch.

- **Repository**: [github.com/juspay/hyperswitch-docs](https://github.com/juspay/hyperswitch-docs)
- **Features**:
  - Installation and setup guides
  - API references
  - Integration tutorials
  - Best practices and architecture overviews

## Repository Structure

This master repository is organized as follows:

```
hyperswitch-master/
├── ARCHITECTURE.md         # Detailed architecture documentation
├── CODE_OF_CONDUCT.md      # Code of conduct guidelines
├── CONTRIBUTING.md         # Contribution guidelines
├── DEEPWIKI_GUIDE.md       # Guide for using DeepWiki
├── LICENSE                 # Apache 2.0 license
├── README.md               # This file
├── RESOURCES.md            # Comprehensive list of resources
├── repositories/           # Directory containing all component code
│   ├── hyperswitch/        # Core payment engine
│   ├── hyperswitch-control-center/  # Admin dashboard
│   ├── hyperswitch-web/    # Web SDK
│   ├── hyperswitch-card-vault/  # Card vault
│   └── hyperswitch-docs/   # Documentation
├── sync-repos.sh           # Script to sync repositories
└── update-deepwiki.sh      # Script to update DeepWiki index
```

## Scripts

This repository includes the following scripts to help manage the code and documentation:

### sync-repos.sh

This script synchronizes code from all Hyperswitch repositories into the `repositories/` directory. It clones the repositories if they don't exist or updates them if they do.

```bash
./sync-repos.sh
```

### update-deepwiki.sh

This script updates the DeepWiki index for all repositories. It assumes you have already run `sync-repos.sh`.

```bash
./update-deepwiki.sh
```

## Technology Stack

The Hyperswitch ecosystem is built using various technologies:

- **Rust**: Powers the core backend services, providing high performance and reliability
- **ReScript**: Used in the Control Center and web interfaces
- **JavaScript/TypeScript**: Used in the Web SDK
- **PostgreSQL**: Primary database for persistent storage
- **Redis**: Used for caching and session management

## Getting Started

To get started with Hyperswitch, you can:

1. Clone this repository and run `./sync-repos.sh` to get all the code
2. Visit the [official Hyperswitch documentation](https://hyperswitch.io/docs/)
3. Try the [local setup](https://github.com/juspay/hyperswitch#1-local-setup) for a quick development environment
4. Explore the [Hyperswitch Control Center](https://github.com/juspay/hyperswitch-control-center) to manage your payment stack
5. Integrate the [Web SDK](https://github.com/juspay/hyperswitch-web) into your applications

## DeepWiki Resources

This master repository is linked to a comprehensive DeepWiki that enables developers to query and understand the Hyperswitch product holistically. The DeepWiki indexes documentation, code, and resources from all Hyperswitch repositories to provide:

- Cross-repository code search
- Unified documentation browsing
- Architectural overviews spanning multiple components
- API references and integration guides

See [DEEPWIKI_GUIDE.md](DEEPWIKI_GUIDE.md) for details on how to use DeepWiki.

## Support and Community

- Join the conversation on [Slack](https://hyperswitch.io/slack)
- Participate in [GitHub Discussions](https://github.com/juspay/hyperswitch/discussions)
- Report bugs or request features by opening issues in the respective repositories

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute to Hyperswitch.

## License

Hyperswitch is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

## About Juspay

This project is created and maintained by [Juspay](https://juspay.in), a global leader in payment orchestration and checkout solutions, founded in 2012 and trusted by 400+ leading enterprises and brands worldwide. 