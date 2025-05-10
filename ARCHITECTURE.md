# Hyperswitch Architecture

This document provides an overview of the Hyperswitch architecture, explaining how the different components interact to create a complete payment orchestration platform.

## High-Level Architecture

Hyperswitch consists of five main components that work together to provide a comprehensive payment orchestration solution:

```
┌───────────────────┐      ┌───────────────────┐      ┌───────────────────┐
│                   │      │                   │      │                   │
│   Hyperswitch     │◄────►│   Hyperswitch     │◄────►│   Hyperswitch     │
│   Web SDK         │      │   Core            │      │   Card Vault      │
│                   │      │                   │      │                   │
└───────────────────┘      └─────────┬─────────┘      └───────────────────┘
                                     │
                                     ▼
                           ┌───────────────────┐
                           │                   │
                           │   Hyperswitch     │
                           │   Control Center  │
                           │                   │
                           └───────────────────┘
```

## Component Interactions

### 1. Hyperswitch Core

The Hyperswitch Core, written in Rust, is the central engine that handles all payment processing, routing, and orchestration. It interacts with:

- **Payment Service Providers (PSPs)**: Connects to multiple payment processors to facilitate payment transactions
- **Web SDK**: Receives payment requests from the client-side SDK
- **Card Vault**: Securely stores and retrieves sensitive payment information
- **Control Center**: Provides data for monitoring and receives configuration updates

### 2. Hyperswitch Web SDK

The client-side SDK that integrates with merchant websites and applications. It:

- Communicates with Hyperswitch Core to process payments
- Renders payment forms and handles user interactions
- Implements client-side validation and security measures
- Facilitates saved payment methods when working with the Card Vault

### 3. Hyperswitch Card Vault

A secure service for storing sensitive payment information. It:

- Encrypts and securely stores payment method details
- Provides tokenization services
- Maintains PCI compliance
- Communicates with Hyperswitch Core to facilitate transactions with saved payment methods

### 4. Hyperswitch Control Center

The administrative interface for managing the payment stack. It:

- Provides a dashboard for monitoring payment transactions
- Allows configuration of routing rules and retry logic
- Offers analytics and reporting capabilities
- Manages connector configurations and settings

### 5. Hyperswitch Documentation

Comprehensive documentation that:

- Provides installation and integration guides
- Explains API references
- Offers tutorials and best practices
- Helps troubleshoot common issues

## Data Flow

### Payment Flow

1. A customer initiates a payment on a merchant's website or application
2. The Hyperswitch Web SDK collects the payment information
3. The SDK sends the payment request to Hyperswitch Core
4. Hyperswitch Core applies routing rules configured in the Control Center
5. If using a saved payment method, Hyperswitch Core retrieves the information from the Card Vault
6. Hyperswitch Core routes the payment to the appropriate PSP
7. The PSP processes the payment and returns a response
8. Hyperswitch Core processes the response, initiating retries if necessary according to configured rules
9. The final response is returned to the Web SDK
10. The Web SDK displays the appropriate response to the customer

### Configuration Flow

1. A merchant configures routing rules and settings in the Control Center
2. The Control Center saves the configuration to the database
3. Hyperswitch Core retrieves and applies the updated configuration

## Technology Stack Details

### Hyperswitch Core (Rust)
- High-performance, memory-safe backend
- Actix-web for HTTP server
- PostgreSQL for persistent storage
- Redis for caching and session management
- gRPC for internal service communication

### Hyperswitch Web SDK (JavaScript/TypeScript)
- Framework-agnostic client library
- Support for React, Vue, Angular, and vanilla JS
- Responsive design for various devices
- Secure iframe-based card fields

### Hyperswitch Control Center (ReScript)
- React-based admin dashboard
- State management with ReScript
- Data visualization and analytics
- Role-based access control

### Hyperswitch Card Vault
- Secure, isolated service
- Encryption at rest and in transit
- Tokenization capabilities
- Compliance with PCI DSS requirements

## Deployment Architecture

Hyperswitch can be deployed in various configurations:

### Self-Hosted
- Docker containers for each component
- Kubernetes orchestration
- Helm charts for deployment
- Separate scaling for each component

### Cloud Provider Deployments
- AWS CDK scripts for quick deployment
- Support for GCP and Azure via Helm charts
- Utilizes managed services (RDS, ElastiCache)

### Development Setup
- Local development with Docker Compose
- Hot reloading for rapid development
- Multiple profiles (Standard, Full, Standalone) 