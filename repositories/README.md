# Hyperswitch Repositories

This directory contains all the code from the various Hyperswitch repositories. Each subdirectory is a clone of the corresponding GitHub repository.

## Repository Structure

- **hyperswitch**: The core payment processing engine written in Rust
- **hyperswitch-control-center**: The administration dashboard for managing Hyperswitch
- **hyperswitch-web**: The Web SDK for client-side integration
- **hyperswitch-card-vault**: The secure card vault for storing payment information
- **hyperswitch-docs**: Comprehensive documentation for the Hyperswitch ecosystem

## Usage

These repositories are synchronized using the `sync-repos.sh` script in the root directory. The script clones the repositories if they don't exist or updates them if they do.

## Integration with DeepWiki

The code in these repositories is indexed by DeepWiki to provide a unified search and documentation experience. You can use the `update-deepwiki.sh` script to update the DeepWiki index.

## Working with the Code

To work with a specific repository, navigate to its directory and follow the setup instructions in its README file. For example:

```bash
cd hyperswitch
# Follow setup instructions in the repository's README
```

## Contributing

If you want to contribute to Hyperswitch, please see the [CONTRIBUTING.md](../CONTRIBUTING.md) file in the root directory for guidelines.

## License

All Hyperswitch repositories are licensed under the Apache 2.0 License. See the [LICENSE](../LICENSE) file in the root directory or the individual repositories for details. 