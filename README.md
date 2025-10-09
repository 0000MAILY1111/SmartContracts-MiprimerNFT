# 🎨 Mi Primera Colección NFT
![Solidity](https://img.shields.io/badge/Solidity-^0.8.20-363636?style=flat&logo=solidity)
![Ethereum](https://img.shields.io/badge/Ethereum-Sepolia-3C3C3D?style=flat&logo=ethereum)
![License](https://img.shields.io/badge/License-MIT-green.svg)

Una colección de tokens no fungibles (NFT) ERC721 completa con sistema de minteo público, gestión de propietarios y funcionalidades avanzadas. Desplegado y verificado en Ethereum Sepolia Testnet.

## 🌐 Contrato Desplegado (Sepolia Testnet)

| Contrato | Dirección | Etherscan |
|----------|-----------|-----------|
| MiPrimeraColeccionNFT | `0x41e08622d85fbe2f378be686e508cf802f97a5c7` | [Ver Contrato Verificado ✅](https://sepolia.etherscan.io/address/0x41e08622d85fbe2f378be686e508cf802f97a5c7#code) |

### 📋 Información de Despliegue

| Item | Valor | Link |
|------|-------|------|
| **Contrato** | `0x41e08622d85fbe2f378be686e508cf802f97a5c7` | [Etherscan](https://sepolia.etherscan.io/address/0x41e08622d85fbe2f378be686e508cf802f97a5c7#code) |
| **Wallet Propietario** | `0xD081f6693E2dF6d833e0026720F9Ce23d524229C` | [Ver en Etherscan](https://sepolia.etherscan.io/address/0xD081f6693E2dF6d833e0026720F9Ce23d524229C) |
| **Transaction Hash** | `0xea4edd58ad39e6d229680a744e2607432234d4e1a70bbe41759f9cfbd938633a` | [Ver Transacción](https://sepolia.etherscan.io/tx/0xea4edd58ad39e6d229680a744e2607432234d4e1a70bbe41759f9cfbd938633a) |
| **Block Number** | 9375587 | [Ver Bloque](https://sepolia.etherscan.io/block/9375587) |
| **Timestamp** | Oct-09-2025 12:06:00 PM UTC | 2 Block Confirmations |

✅ **Contrato completamente verificado** - Código fuente público y auditable

## 🎯 Características Principales

### 🔥 Funcionalidades Core
✅ **Sistema de Minteo Público** - Cualquiera puede mintear NFTs pagando el precio establecido  
✅ **Minteo por Lotes** - Mintea hasta 10 NFTs en una sola transacción  
✅ **Gestión de Propietarios** - Control total del contrato por el owner  
✅ **Supply Limitado** - Colección de máximo 100 NFTs únicos  
✅ **Precio Configurable** - El owner puede ajustar el precio de minteo  
✅ **Retiro de Fondos** - Sistema seguro para retirar las ganancias  

### 🚀 Funcionalidades Avanzadas
✅ **Minteo Gratuito del Owner** - El propietario puede mintear sin costo  
✅ **Consulta de Tokens** - Visualiza todos los NFTs de una dirección  
✅ **Transferencias ERC721** - Totalmente compatible con el estándar  
✅ **Metadatos Configurables** - URI base personalizable  
✅ **Supply Dinámico** - El owner puede ajustar el máximo de NFTs  
✅ **Eventos Detallados** - Seguimiento completo de todas las acciones  

### 🔐 Seguridad
✅ **Ownership Pattern** - Solo el owner puede ejecutar funciones administrativas  
✅ **Validaciones Robustas** - Verificación de todos los parámetros de entrada  
✅ **Protección de Fondos** - Sistema seguro de manejo de ETH  
✅ **Código Verificado** - Público y auditable en Etherscan  

## 📊 Estadísticas del Proyecto

- **Líneas de Código Solidity:** ~200 líneas
- **Contratos:** 1 (MiPrimeraColeccionNFT.sol)
- **Supply Máximo:** 100 NFTs
- **Precio de Minteo:** 0.01 ETH
- **Estándar:** ERC721 Simplificado
- **Gas Optimizado:** ✅ Implementación eficiente
- **Auditoría:** Código público y verificable

## 🛠️ Tech Stack

- **Blockchain:** Ethereum (Sepolia Testnet)
- **Smart Contracts:** Solidity ^0.8.20
- **Estándar:** ERC721 (NFT)
- **IDE:** Remix Ethereum IDE
- **Wallet:** MetaMask
- **Testing:** Manual en Sepolia Testnet
- **Verification:** Etherscan

## 🚀 Quick Start

### 1️⃣ Conectar Wallet
```bash
# Agregar Sepolia Testnet a MetaMask
Network Name: Sepolia
RPC URL: https://sepolia.infura.io/v3/YOUR-PROJECT-ID
Chain ID: 11155111
Currency Symbol: ETH
Block Explorer: https://sepolia.etherscan.io
```

### 2️⃣ Obtener ETH de Testnet
```bash
# Faucets de Sepolia
https://sepoliafaucet.com/
https://faucets.chain.link/sepolia
```

### 3️⃣ Interactuar con el Contrato
Puedes interactuar directamente desde [Etherscan](https://sepolia.etherscan.io/address/0x41e08622d85fbe2f378be686e508cf802f97a5c7#writeContract):

```solidity
// 1. Mintear un NFT
mint() payable
// Envía: 0.01 ETH

// 2. Mintear múltiples NFTs
mintBatch(uint256 quantity) payable
// quantity: 5
// Envía: 0.05 ETH

// 3. Ver tus NFTs
tokensOfOwner(address owner) view
// owner: tu dirección
```

## 📋 Funciones Principales

### Para Usuarios (Público):
```solidity
// Mintear un solo NFT (0.01 ETH)
function mint() external payable

// Mintear múltiples NFTs (hasta 10)
function mintBatch(uint256 quantity) external payable

// Ver el propietario de un NFT
function ownerOf(uint256 tokenId) external view returns (address)

// Ver balance de NFTs de una dirección
function balanceOf(address owner) external view returns (uint256)

// Ver todos los tokens de un propietario
function tokensOfOwner(address tokenOwner) external view returns (uint256[] memory)

// Transferir un NFT
function transfer(address to, uint256 tokenId) external

// Ver total de NFTs minteados
function totalSupply() external view returns (uint256)
```

### Para Owner (Administrador):
```solidity
// Mintear gratis a cualquier dirección
function ownerMint(address to) external onlyOwner

// Cambiar precio de minteo
function setMintPrice(uint256 newPrice) external onlyOwner

// Cambiar supply máximo
function setMaxSupply(uint256 newMaxSupply) external onlyOwner

// Retirar fondos del contrato
function withdraw() external onlyOwner
```

## 📢 Eventos Implementados

```solidity
// Emitido cuando se mintea un NFT
event Minted(address indexed to, uint256 indexed tokenId);

// Emitido cuando se transfiere un NFT
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
```

## 🧪 Casos de Uso

### Scenario 1: Minteo Básico
```javascript
// Usuario mintea un NFT pagando 0.01 ETH
await contract.mint({ value: ethers.parseEther("0.01") });
// Recibe el token ID #0
```

### Scenario 2: Minteo por Lotes
```javascript
// Usuario mintea 5 NFTs en una transacción
await contract.mintBatch(5, { value: ethers.parseEther("0.05") });
// Recibe los tokens #1, #2, #3, #4, #5
```

### Scenario 3: Consultar NFTs
```javascript
// Ver todos los NFTs de una dirección
const myNFTs = await contract.tokensOfOwner("0xTU_DIRECCION");
console.log(myNFTs); // [0, 3, 7, 12]
```

### Scenario 4: Transferir NFT
```javascript
// Transferir NFT #5 a otra dirección
await contract.transfer("0xDIRECCION_DESTINO", 5);
```

## 📁 Estructura del Proyecto

```
mi-primera-coleccion-nft/
├── contracts/
│   └── MiPrimeraColeccionNFT.sol    # 🎨 Contrato principal NFT
├── README.md                         # 📖 Este archivo
├── deployed-info.json                # 📋 Info del despliegue
└── LICENSE                          # 📄 Licencia MIT
```

## 🎯 Configuración Actual

### Parámetros del Contrato
- **Nombre:** MiPrimeraColeccionNFT
- **Símbolo:** MPCNFT
- **Supply Máximo:** 100 NFTs
- **Precio de Minteo:** 0.01 ETH
- **Owner:** `0xD081f6693E2dF6d833e0026720F9Ce23d524229C`

### Estado de la Colección
- ✅ Contrato Desplegado
- ✅ Verificado en Etherscan
- 🔄 Minteo Activo
- 📈 Supply: 0/100 minteados

## 📈 Reglas de Minteo

### 💰 Minteo Público
- **Precio:** 0.01 ETH por NFT
- **Límite por transacción:** 10 NFTs
- **Supply máximo:** 100 NFTs
- **Estado:** ✅ Activo

### 👑 Minteo del Owner
- **Precio:** Gratis
- **Límite:** Sin límite (respetando supply máximo)
- **Destino:** Cualquier dirección

### 🔄 Transferencias
- **ERC721 Compliant:** ✅
- **Marketplace Compatible:** ✅ (OpenSea, Rarible, etc.)

## 🛡️ Seguridad

### Validaciones Implementadas
```solidity
✅ Solo el owner puede ejecutar funciones administrativas
✅ Verificación de supply máximo en cada mint
✅ Validación de pago suficiente (msg.value >= mintPrice)
✅ Verificación de cantidad en mintBatch (1-10)
✅ Validación de propietario en transferencias
✅ Protección contra dirección cero
```

### Mejores Prácticas
- **Ownership Pattern:** Control de acceso robusto
- **Input Validation:** Verificación de todos los parámetros
- **State Management:** Control correcto de estado
- **Event Logging:** Trazabilidad completa

## 📊 Información de Despliegue

### Transacción de Despliegue
- **Hash:** `0xea4edd58ad39e6d229680a744e2607432234d4e1a70bbe41759f9cfbd938633a`
- **Bloque:** #9375587
- **Fecha:** Oct-09-2025 12:06:00 PM UTC
- **Gas Usado:** ~2,000,000 gas
- **Estado:** ✅ Success

### Costo de Despliegue
- **Gas Fee:** ~0.001 ETH (testnet)
- **Constructor Arg:** Owner address

## 🤝 Cómo Usar Este Proyecto

### Para Usuarios:
1. Conecta MetaMask a Sepolia
2. Ve al contrato en Etherscan
3. Conéctate con "Write Contract"
4. Usa la función `mint()` con 0.01 ETH
5. ¡Disfruta tu NFT!

### Para Desarrolladores:
1. Revisa el código en Etherscan
2. Estudia las funciones implementadas
3. Aprende de la estructura del contrato
4. Adapta para tu proyecto

## 🎓 Aprendizajes del Proyecto

Este proyecto fue creado como parte de mi formación en desarrollo blockchain y Web3. A través de él aprendí:

✅ Desarrollo de smart contracts con Solidity  
✅ Estándar ERC721 para NFTs  
✅ Uso de Remix IDE para desarrollo  
✅ Despliegue en testnet (Sepolia)  
✅ Verificación de contratos en Etherscan  
✅ Gestión de ownership y permisos  
✅ Manejo seguro de ETH en contratos  
✅ Testing manual en blockchain  

## 📞 Contacto

- **Desarrollador:** [mayxuz]
- **GitHub:** [(https://github.com/0000MAILY1111/SmartContracts-MiprimerNFT)]

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.

## 🎉 Agradecimientos

- Comunidad de Ethereum
- Remix IDE Team
- OpenZeppelin por los estándares
- Sepolia Testnet por el ambiente de prueba

---

## 🔗 Links Útiles

- 📖 [Documentación de Solidity](https://docs.soliditylang.org/)
- 🎨 [ERC721 Standard](https://eips.ethereum.org/EIPS/eip-721)
- 🦊 [MetaMask](https://metamask.io/)
- 🔍 [Sepolia Etherscan](https://sepolia.etherscan.io/)
- 🧪 [Remix IDE](https://remix.ethereum.org/)

---

<div align="center">

### 🚀 ¡Mi primer proyecto NFT en blockchain!

**⭐ Si te gustó el proyecto, dale una estrella ⭐**

Hecho con ❤️ y mucho ☕ mientras aprendo Web3

[Ver Contrato](https://sepolia.etherscan.io/address/0x41e08622d85fbe2f378be686e508cf802f97a5c7#code) • [Reportar Bug](../../issues) • [Solicitar Feature](../../issues)

</div>

---

## 📈 Roadmap Futuro

- [ ] Implementar metadata IPFS
- [ ] Agregar funciones de royalties
- [ ] Crear frontend con React
- [ ] Integrar con OpenSea
- [ ] Deploy en mainnet
- [ ] Agregar whitelist para minteo
- [ ] Sistema de staking de NFTs
- [ ] Marketplace propio

---

**Última actualización:** Octubre 2025"# SmartContracts-MiprimerNFT" 
