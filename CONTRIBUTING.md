# Contributing to Hyperswitch

Thank you for your interest in contributing to Hyperswitch! This guide will help you understand how to contribute to the Hyperswitch ecosystem through this master repository.

## Overview

The Hyperswitch ecosystem consists of multiple repositories, each with its own specific focus:

1. [Hyperswitch Core](https://github.com/juspay/hyperswitch) - Payment processing engine
2. [Hyperswitch Control Center](https://github.com/juspay/hyperswitch-control-center) - Administration dashboard
3. [Hyperswitch Web SDK](https://github.com/juspay/hyperswitch-web) - Client-side integration
4. [Hyperswitch Card Vault](https://github.com/juspay/hyperswitch-card-vault) - Secure payment information storage
5. [Hyperswitch Documentation](https://github.com/juspay/hyperswitch-docs) - Documentation and guides

This master repository serves as a central index and integration point for all these components.

## How to Contribute

### 1. Determine the Right Repository

Before contributing, determine which repository your contribution belongs to:

- **Hyperswitch Core**: For backend changes, payment processing logic, connector implementations
- **Control Center**: For dashboard UI/UX improvements, reporting features
- **Web SDK**: For client-side integration improvements, payment form enhancements
- **Card Vault**: For security improvements, tokenization features
- **Documentation**: For documentation updates, tutorials, guides
- **Master Repository**: For cross-repository architecture documentation, integration guides

### 2. Check Existing Issues and Discussions

Before starting work:

1. Check the repository's issues to see if your idea or bug has already been reported
2. Look at open pull requests to avoid duplicating work
3. Discuss your idea in the [GitHub Discussions](https://github.com/juspay/hyperswitch/discussions) if it's a significant change

### 3. Fork and Clone the Repository

1. Fork the appropriate repository to your GitHub account
2. Clone your fork locally
3. Set up your development environment following the repository's README

Example for the Core repository:
```bash
git clone https://github.com/YOUR_USERNAME/hyperswitch.git
cd hyperswitch
# Follow setup instructions in README.md
```

### 4. Create a Branch

Create a branch for your contribution:

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/issue-you-are-fixing
```

### 5. Make Your Changes

Follow these guidelines when making changes:

- **Core (Rust)**:
  - Follow Rust coding standards
  - Ensure proper error handling
  - Write unit tests for your changes
  - Document your code with comments

- **Control Center (ReScript)**:
  - Follow ReScript/React best practices
  - Ensure responsive design
  - Maintain accessibility standards
  - Write tests for your components

- **Web SDK (JavaScript/TypeScript)**:
  - Follow TypeScript best practices
  - Ensure browser compatibility
  - Consider performance implications
  - Write unit tests for your changes

- **Documentation**:
  - Follow the documentation style guide
  - Ensure accuracy and clarity
  - Include examples where appropriate
  - Check for spelling and grammar

### 6. Test Your Changes

Before submitting your contribution:

1. Run the existing test suite to ensure you haven't broken anything
2. Add new tests for your changes
3. Test across different environments if applicable

### 7. Submit a Pull Request

1. Push your changes to your fork
2. Create a pull request against the main branch of the original repository
3. Fill out the pull request template with all required information
4. Link any relevant issues

Example:
```bash
git push origin feature/your-feature-name
# Then create a PR via the GitHub UI
```

### 8. Code Review Process

After submitting your PR:

1. Maintainers will review your code
2. Address any feedback or requested changes
3. Once approved, your changes will be merged

## Cross-Repository Contributions

For features that span multiple repositories:

1. Create separate PRs for each repository
2. Reference the related PRs in each description
3. Coordinate the changes to ensure they work together
4. Update the appropriate documentation in the master repository

## Documentation Contributions

Documentation is crucial for Hyperswitch. Consider contributing by:

1. Improving existing documentation
2. Adding examples and tutorials
3. Creating architecture diagrams
4. Writing integration guides

## Community

Join our community channels:

- [Slack](https://hyperswitch.io/slack)
- [GitHub Discussions](https://github.com/juspay/hyperswitch/discussions)

## Code of Conduct

Please follow our [Code of Conduct](https://github.com/juspay/hyperswitch/blob/main/CODE_OF_CONDUCT.md) in all your interactions with the project.

## License

By contributing to Hyperswitch, you agree that your contributions will be licensed under the Apache 2.0 license. 