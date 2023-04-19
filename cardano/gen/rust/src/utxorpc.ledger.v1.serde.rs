// @generated
impl serde::Serialize for Asset {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.name.is_empty() {
            len += 1;
        }
        if self.quantity != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Asset", len)?;
        if !self.name.is_empty() {
            struct_ser.serialize_field("name", pbjson::private::base64::encode(&self.name).as_str())?;
        }
        if self.quantity != 0 {
            struct_ser.serialize_field("quantity", ToString::to_string(&self.quantity).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Asset {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "name",
            "quantity",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Name,
            Quantity,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "name" => Ok(GeneratedField::Name),
                            "quantity" => Ok(GeneratedField::Quantity),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Asset;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Asset")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Asset, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut name__ = None;
                let mut quantity__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Name => {
                            if name__.is_some() {
                                return Err(serde::de::Error::duplicate_field("name"));
                            }
                            name__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Quantity => {
                            if quantity__.is_some() {
                                return Err(serde::de::Error::duplicate_field("quantity"));
                            }
                            quantity__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(Asset {
                    name: name__.unwrap_or_default(),
                    quantity: quantity__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Asset", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for AuxData {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.metadata.is_empty() {
            len += 1;
        }
        if !self.scripts.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.AuxData", len)?;
        if !self.metadata.is_empty() {
            struct_ser.serialize_field("metadata", &self.metadata)?;
        }
        if !self.scripts.is_empty() {
            struct_ser.serialize_field("scripts", &self.scripts)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for AuxData {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "metadata",
            "scripts",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Metadata,
            Scripts,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "metadata" => Ok(GeneratedField::Metadata),
                            "scripts" => Ok(GeneratedField::Scripts),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = AuxData;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.AuxData")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<AuxData, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut metadata__ = None;
                let mut scripts__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Metadata => {
                            if metadata__.is_some() {
                                return Err(serde::de::Error::duplicate_field("metadata"));
                            }
                            metadata__ = Some(map.next_value()?);
                        }
                        GeneratedField::Scripts => {
                            if scripts__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scripts"));
                            }
                            scripts__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(AuxData {
                    metadata: metadata__.unwrap_or_default(),
                    scripts: scripts__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.AuxData", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BigInt {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.BigInt", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BigInt {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = BigInt;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.BigInt")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<BigInt, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(BigInt {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.BigInt", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for BoundedBytes {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.BoundedBytes", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for BoundedBytes {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = BoundedBytes;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.BoundedBytes")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<BoundedBytes, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(BoundedBytes {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.BoundedBytes", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Certificate {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.certificate.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Certificate", len)?;
        if let Some(v) = self.certificate.as_ref() {
            match v {
                certificate::Certificate::StakeRegistration(v) => {
                    struct_ser.serialize_field("stakeRegistration", v)?;
                }
                certificate::Certificate::StakeDeregistration(v) => {
                    struct_ser.serialize_field("stakeDeregistration", v)?;
                }
                certificate::Certificate::StakeDelegation(v) => {
                    struct_ser.serialize_field("stakeDelegation", v)?;
                }
                certificate::Certificate::PoolRegistration(v) => {
                    struct_ser.serialize_field("poolRegistration", v)?;
                }
                certificate::Certificate::PoolRetirement(v) => {
                    struct_ser.serialize_field("poolRetirement", v)?;
                }
                certificate::Certificate::GenesisKeyDelegation(v) => {
                    struct_ser.serialize_field("genesisKeyDelegation", v)?;
                }
                certificate::Certificate::MoveInstantaneousRewardsCert(v) => {
                    struct_ser.serialize_field("moveInstantaneousRewardsCert", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Certificate {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "stake_registration",
            "stakeRegistration",
            "stake_deregistration",
            "stakeDeregistration",
            "stake_delegation",
            "stakeDelegation",
            "pool_registration",
            "poolRegistration",
            "pool_retirement",
            "poolRetirement",
            "genesis_key_delegation",
            "genesisKeyDelegation",
            "move_instantaneous_rewards_cert",
            "moveInstantaneousRewardsCert",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StakeRegistration,
            StakeDeregistration,
            StakeDelegation,
            PoolRegistration,
            PoolRetirement,
            GenesisKeyDelegation,
            MoveInstantaneousRewardsCert,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "stakeRegistration" | "stake_registration" => Ok(GeneratedField::StakeRegistration),
                            "stakeDeregistration" | "stake_deregistration" => Ok(GeneratedField::StakeDeregistration),
                            "stakeDelegation" | "stake_delegation" => Ok(GeneratedField::StakeDelegation),
                            "poolRegistration" | "pool_registration" => Ok(GeneratedField::PoolRegistration),
                            "poolRetirement" | "pool_retirement" => Ok(GeneratedField::PoolRetirement),
                            "genesisKeyDelegation" | "genesis_key_delegation" => Ok(GeneratedField::GenesisKeyDelegation),
                            "moveInstantaneousRewardsCert" | "move_instantaneous_rewards_cert" => Ok(GeneratedField::MoveInstantaneousRewardsCert),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Certificate;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Certificate")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Certificate, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut certificate__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::StakeRegistration => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stakeRegistration"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::StakeRegistration)
;
                        }
                        GeneratedField::StakeDeregistration => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stakeDeregistration"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::StakeDeregistration)
;
                        }
                        GeneratedField::StakeDelegation => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stakeDelegation"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::StakeDelegation)
;
                        }
                        GeneratedField::PoolRegistration => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolRegistration"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::PoolRegistration)
;
                        }
                        GeneratedField::PoolRetirement => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolRetirement"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::PoolRetirement)
;
                        }
                        GeneratedField::GenesisKeyDelegation => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("genesisKeyDelegation"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::GenesisKeyDelegation)
;
                        }
                        GeneratedField::MoveInstantaneousRewardsCert => {
                            if certificate__.is_some() {
                                return Err(serde::de::Error::duplicate_field("moveInstantaneousRewardsCert"));
                            }
                            certificate__ = map.next_value::<::std::option::Option<_>>()?.map(certificate::Certificate::MoveInstantaneousRewardsCert)
;
                        }
                    }
                }
                Ok(Certificate {
                    certificate: certificate__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Certificate", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Collateral {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.collateral.is_empty() {
            len += 1;
        }
        if self.collateral_return.is_some() {
            len += 1;
        }
        if self.total_collateral != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Collateral", len)?;
        if !self.collateral.is_empty() {
            struct_ser.serialize_field("collateral", &self.collateral)?;
        }
        if let Some(v) = self.collateral_return.as_ref() {
            struct_ser.serialize_field("collateralReturn", v)?;
        }
        if self.total_collateral != 0 {
            struct_ser.serialize_field("totalCollateral", ToString::to_string(&self.total_collateral).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Collateral {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "collateral",
            "collateral_return",
            "collateralReturn",
            "total_collateral",
            "totalCollateral",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Collateral,
            CollateralReturn,
            TotalCollateral,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "collateral" => Ok(GeneratedField::Collateral),
                            "collateralReturn" | "collateral_return" => Ok(GeneratedField::CollateralReturn),
                            "totalCollateral" | "total_collateral" => Ok(GeneratedField::TotalCollateral),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Collateral;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Collateral")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Collateral, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut collateral__ = None;
                let mut collateral_return__ = None;
                let mut total_collateral__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Collateral => {
                            if collateral__.is_some() {
                                return Err(serde::de::Error::duplicate_field("collateral"));
                            }
                            collateral__ = Some(map.next_value()?);
                        }
                        GeneratedField::CollateralReturn => {
                            if collateral_return__.is_some() {
                                return Err(serde::de::Error::duplicate_field("collateralReturn"));
                            }
                            collateral_return__ = map.next_value()?;
                        }
                        GeneratedField::TotalCollateral => {
                            if total_collateral__.is_some() {
                                return Err(serde::de::Error::duplicate_field("totalCollateral"));
                            }
                            total_collateral__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(Collateral {
                    collateral: collateral__.unwrap_or_default(),
                    collateral_return: collateral_return__,
                    total_collateral: total_collateral__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Collateral", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Constr {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Constr", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Constr {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Constr;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Constr")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Constr, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(Constr {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Constr", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for GenesisKeyDelegationCert {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.genesis_hash.is_empty() {
            len += 1;
        }
        if !self.genesis_delegate_hash.is_empty() {
            len += 1;
        }
        if !self.vrf_keyhash.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.GenesisKeyDelegationCert", len)?;
        if !self.genesis_hash.is_empty() {
            struct_ser.serialize_field("genesisHash", pbjson::private::base64::encode(&self.genesis_hash).as_str())?;
        }
        if !self.genesis_delegate_hash.is_empty() {
            struct_ser.serialize_field("genesisDelegateHash", pbjson::private::base64::encode(&self.genesis_delegate_hash).as_str())?;
        }
        if !self.vrf_keyhash.is_empty() {
            struct_ser.serialize_field("vrfKeyhash", pbjson::private::base64::encode(&self.vrf_keyhash).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for GenesisKeyDelegationCert {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "genesis_hash",
            "genesisHash",
            "genesis_delegate_hash",
            "genesisDelegateHash",
            "vrf_keyhash",
            "vrfKeyhash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            GenesisHash,
            GenesisDelegateHash,
            VrfKeyhash,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "genesisHash" | "genesis_hash" => Ok(GeneratedField::GenesisHash),
                            "genesisDelegateHash" | "genesis_delegate_hash" => Ok(GeneratedField::GenesisDelegateHash),
                            "vrfKeyhash" | "vrf_keyhash" => Ok(GeneratedField::VrfKeyhash),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = GenesisKeyDelegationCert;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.GenesisKeyDelegationCert")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<GenesisKeyDelegationCert, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut genesis_hash__ = None;
                let mut genesis_delegate_hash__ = None;
                let mut vrf_keyhash__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::GenesisHash => {
                            if genesis_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("genesisHash"));
                            }
                            genesis_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::GenesisDelegateHash => {
                            if genesis_delegate_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("genesisDelegateHash"));
                            }
                            genesis_delegate_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::VrfKeyhash => {
                            if vrf_keyhash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("vrfKeyhash"));
                            }
                            vrf_keyhash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(GenesisKeyDelegationCert {
                    genesis_hash: genesis_hash__.unwrap_or_default(),
                    genesis_delegate_hash: genesis_delegate_hash__.unwrap_or_default(),
                    vrf_keyhash: vrf_keyhash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.GenesisKeyDelegationCert", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Metadata {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.label != 0 {
            len += 1;
        }
        if self.value.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Metadata", len)?;
        if self.label != 0 {
            struct_ser.serialize_field("label", ToString::to_string(&self.label).as_str())?;
        }
        if let Some(v) = self.value.as_ref() {
            struct_ser.serialize_field("value", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Metadata {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "label",
            "value",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Label,
            Value,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "label" => Ok(GeneratedField::Label),
                            "value" => Ok(GeneratedField::Value),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Metadata;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Metadata")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Metadata, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut label__ = None;
                let mut value__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Label => {
                            if label__.is_some() {
                                return Err(serde::de::Error::duplicate_field("label"));
                            }
                            label__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Value => {
                            if value__.is_some() {
                                return Err(serde::de::Error::duplicate_field("value"));
                            }
                            value__ = map.next_value()?;
                        }
                    }
                }
                Ok(Metadata {
                    label: label__.unwrap_or_default(),
                    value: value__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Metadata", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Metadatum {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.metadatum.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Metadatum", len)?;
        if let Some(v) = self.metadatum.as_ref() {
            match v {
                metadatum::Metadatum::Int(v) => {
                    struct_ser.serialize_field("Int", ToString::to_string(&v).as_str())?;
                }
                metadatum::Metadatum::Bytes(v) => {
                    struct_ser.serialize_field("Bytes", pbjson::private::base64::encode(&v).as_str())?;
                }
                metadatum::Metadatum::Text(v) => {
                    struct_ser.serialize_field("Text", v)?;
                }
                metadatum::Metadatum::Array(v) => {
                    struct_ser.serialize_field("Array", v)?;
                }
                metadatum::Metadatum::Map(v) => {
                    struct_ser.serialize_field("Map", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Metadatum {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "Int",
            "Bytes",
            "Text",
            "Array",
            "Map",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Int,
            Bytes,
            Text,
            Array,
            Map,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "Int" => Ok(GeneratedField::Int),
                            "Bytes" => Ok(GeneratedField::Bytes),
                            "Text" => Ok(GeneratedField::Text),
                            "Array" => Ok(GeneratedField::Array),
                            "Map" => Ok(GeneratedField::Map),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Metadatum;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Metadatum")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Metadatum, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut metadatum__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Int => {
                            if metadatum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Int"));
                            }
                            metadatum__ = map.next_value::<::std::option::Option<::pbjson::private::NumberDeserialize<_>>>()?.map(|x| metadatum::Metadatum::Int(x.0));
                        }
                        GeneratedField::Bytes => {
                            if metadatum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Bytes"));
                            }
                            metadatum__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| metadatum::Metadatum::Bytes(x.0));
                        }
                        GeneratedField::Text => {
                            if metadatum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Text"));
                            }
                            metadatum__ = map.next_value::<::std::option::Option<_>>()?.map(metadatum::Metadatum::Text);
                        }
                        GeneratedField::Array => {
                            if metadatum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Array"));
                            }
                            metadatum__ = map.next_value::<::std::option::Option<_>>()?.map(metadatum::Metadatum::Array)
;
                        }
                        GeneratedField::Map => {
                            if metadatum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Map"));
                            }
                            metadatum__ = map.next_value::<::std::option::Option<_>>()?.map(metadatum::Metadatum::Map)
;
                        }
                    }
                }
                Ok(Metadatum {
                    metadatum: metadatum__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Metadatum", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MetadatumArray {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.items.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.MetadatumArray", len)?;
        if !self.items.is_empty() {
            struct_ser.serialize_field("items", &self.items)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MetadatumArray {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "items",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Items,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "items" => Ok(GeneratedField::Items),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MetadatumArray;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.MetadatumArray")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<MetadatumArray, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut items__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Items => {
                            if items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("items"));
                            }
                            items__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(MetadatumArray {
                    items: items__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.MetadatumArray", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MetadatumMap {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.pairs.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.MetadatumMap", len)?;
        if !self.pairs.is_empty() {
            struct_ser.serialize_field("pairs", &self.pairs)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MetadatumMap {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "pairs",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Pairs,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "pairs" => Ok(GeneratedField::Pairs),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MetadatumMap;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.MetadatumMap")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<MetadatumMap, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut pairs__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Pairs => {
                            if pairs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("pairs"));
                            }
                            pairs__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(MetadatumMap {
                    pairs: pairs__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.MetadatumMap", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MetadatumPair {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.key.is_some() {
            len += 1;
        }
        if self.value.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.MetadatumPair", len)?;
        if let Some(v) = self.key.as_ref() {
            struct_ser.serialize_field("key", v)?;
        }
        if let Some(v) = self.value.as_ref() {
            struct_ser.serialize_field("value", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MetadatumPair {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "key",
            "value",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Key,
            Value,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "key" => Ok(GeneratedField::Key),
                            "value" => Ok(GeneratedField::Value),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MetadatumPair;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.MetadatumPair")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<MetadatumPair, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut key__ = None;
                let mut value__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Key => {
                            if key__.is_some() {
                                return Err(serde::de::Error::duplicate_field("key"));
                            }
                            key__ = map.next_value()?;
                        }
                        GeneratedField::Value => {
                            if value__.is_some() {
                                return Err(serde::de::Error::duplicate_field("value"));
                            }
                            value__ = map.next_value()?;
                        }
                    }
                }
                Ok(MetadatumPair {
                    key: key__,
                    value: value__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.MetadatumPair", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for MoveInstantaneousRewardCert {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.MoveInstantaneousRewardCert", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for MoveInstantaneousRewardCert {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = MoveInstantaneousRewardCert;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.MoveInstantaneousRewardCert")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<MoveInstantaneousRewardCert, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(MoveInstantaneousRewardCert {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.MoveInstantaneousRewardCert", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Multiasset {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.policy_id.is_empty() {
            len += 1;
        }
        if !self.assets.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Multiasset", len)?;
        if !self.policy_id.is_empty() {
            struct_ser.serialize_field("policyId", pbjson::private::base64::encode(&self.policy_id).as_str())?;
        }
        if !self.assets.is_empty() {
            struct_ser.serialize_field("assets", &self.assets)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Multiasset {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "policy_id",
            "policyId",
            "assets",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            PolicyId,
            Assets,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "policyId" | "policy_id" => Ok(GeneratedField::PolicyId),
                            "assets" => Ok(GeneratedField::Assets),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Multiasset;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Multiasset")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Multiasset, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut policy_id__ = None;
                let mut assets__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::PolicyId => {
                            if policy_id__.is_some() {
                                return Err(serde::de::Error::duplicate_field("policyId"));
                            }
                            policy_id__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Assets => {
                            if assets__.is_some() {
                                return Err(serde::de::Error::duplicate_field("assets"));
                            }
                            assets__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(Multiasset {
                    policy_id: policy_id__.unwrap_or_default(),
                    assets: assets__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Multiasset", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for NativeScript {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.native_script.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.NativeScript", len)?;
        if let Some(v) = self.native_script.as_ref() {
            match v {
                native_script::NativeScript::ScriptPubkey(v) => {
                    struct_ser.serialize_field("scriptPubkey", pbjson::private::base64::encode(&v).as_str())?;
                }
                native_script::NativeScript::ScriptAll(v) => {
                    struct_ser.serialize_field("scriptAll", v)?;
                }
                native_script::NativeScript::ScriptAny(v) => {
                    struct_ser.serialize_field("scriptAny", v)?;
                }
                native_script::NativeScript::ScriptNOfK(v) => {
                    struct_ser.serialize_field("scriptNOfK", v)?;
                }
                native_script::NativeScript::InvalidBefore(v) => {
                    struct_ser.serialize_field("invalidBefore", ToString::to_string(&v).as_str())?;
                }
                native_script::NativeScript::InvalidHereafter(v) => {
                    struct_ser.serialize_field("invalidHereafter", ToString::to_string(&v).as_str())?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for NativeScript {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "script_pubkey",
            "scriptPubkey",
            "script_all",
            "scriptAll",
            "script_any",
            "scriptAny",
            "script_n_of_k",
            "scriptNOfK",
            "invalid_before",
            "invalidBefore",
            "invalid_hereafter",
            "invalidHereafter",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            ScriptPubkey,
            ScriptAll,
            ScriptAny,
            ScriptNOfK,
            InvalidBefore,
            InvalidHereafter,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "scriptPubkey" | "script_pubkey" => Ok(GeneratedField::ScriptPubkey),
                            "scriptAll" | "script_all" => Ok(GeneratedField::ScriptAll),
                            "scriptAny" | "script_any" => Ok(GeneratedField::ScriptAny),
                            "scriptNOfK" | "script_n_of_k" => Ok(GeneratedField::ScriptNOfK),
                            "invalidBefore" | "invalid_before" => Ok(GeneratedField::InvalidBefore),
                            "invalidHereafter" | "invalid_hereafter" => Ok(GeneratedField::InvalidHereafter),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = NativeScript;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.NativeScript")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<NativeScript, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut native_script__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::ScriptPubkey => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scriptPubkey"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| native_script::NativeScript::ScriptPubkey(x.0));
                        }
                        GeneratedField::ScriptAll => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scriptAll"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<_>>()?.map(native_script::NativeScript::ScriptAll)
;
                        }
                        GeneratedField::ScriptAny => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scriptAny"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<_>>()?.map(native_script::NativeScript::ScriptAny)
;
                        }
                        GeneratedField::ScriptNOfK => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scriptNOfK"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<_>>()?.map(native_script::NativeScript::ScriptNOfK)
;
                        }
                        GeneratedField::InvalidBefore => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("invalidBefore"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<::pbjson::private::NumberDeserialize<_>>>()?.map(|x| native_script::NativeScript::InvalidBefore(x.0));
                        }
                        GeneratedField::InvalidHereafter => {
                            if native_script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("invalidHereafter"));
                            }
                            native_script__ = map.next_value::<::std::option::Option<::pbjson::private::NumberDeserialize<_>>>()?.map(|x| native_script::NativeScript::InvalidHereafter(x.0));
                        }
                    }
                }
                Ok(NativeScript {
                    native_script: native_script__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.NativeScript", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for NativeScriptList {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.items.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.NativeScriptList", len)?;
        if !self.items.is_empty() {
            struct_ser.serialize_field("items", &self.items)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for NativeScriptList {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "items",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Items,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "items" => Ok(GeneratedField::Items),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = NativeScriptList;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.NativeScriptList")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<NativeScriptList, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut items__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Items => {
                            if items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("items"));
                            }
                            items__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(NativeScriptList {
                    items: items__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.NativeScriptList", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PlutusData {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.plutus_data.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PlutusData", len)?;
        if let Some(v) = self.plutus_data.as_ref() {
            match v {
                plutus_data::PlutusData::Constr(v) => {
                    struct_ser.serialize_field("Constr", v)?;
                }
                plutus_data::PlutusData::Map(v) => {
                    struct_ser.serialize_field("Map", v)?;
                }
                plutus_data::PlutusData::BigInt(v) => {
                    struct_ser.serialize_field("BigInt", v)?;
                }
                plutus_data::PlutusData::BoundedBytes(v) => {
                    struct_ser.serialize_field("BoundedBytes", v)?;
                }
                plutus_data::PlutusData::Array(v) => {
                    struct_ser.serialize_field("Array", v)?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PlutusData {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "Constr",
            "Map",
            "BigInt",
            "BoundedBytes",
            "Array",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Constr,
            Map,
            BigInt,
            BoundedBytes,
            Array,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "Constr" => Ok(GeneratedField::Constr),
                            "Map" => Ok(GeneratedField::Map),
                            "BigInt" => Ok(GeneratedField::BigInt),
                            "BoundedBytes" => Ok(GeneratedField::BoundedBytes),
                            "Array" => Ok(GeneratedField::Array),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PlutusData;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PlutusData")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PlutusData, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut plutus_data__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Constr => {
                            if plutus_data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Constr"));
                            }
                            plutus_data__ = map.next_value::<::std::option::Option<_>>()?.map(plutus_data::PlutusData::Constr)
;
                        }
                        GeneratedField::Map => {
                            if plutus_data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Map"));
                            }
                            plutus_data__ = map.next_value::<::std::option::Option<_>>()?.map(plutus_data::PlutusData::Map)
;
                        }
                        GeneratedField::BigInt => {
                            if plutus_data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("BigInt"));
                            }
                            plutus_data__ = map.next_value::<::std::option::Option<_>>()?.map(plutus_data::PlutusData::BigInt)
;
                        }
                        GeneratedField::BoundedBytes => {
                            if plutus_data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("BoundedBytes"));
                            }
                            plutus_data__ = map.next_value::<::std::option::Option<_>>()?.map(plutus_data::PlutusData::BoundedBytes)
;
                        }
                        GeneratedField::Array => {
                            if plutus_data__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Array"));
                            }
                            plutus_data__ = map.next_value::<::std::option::Option<_>>()?.map(plutus_data::PlutusData::Array)
;
                        }
                    }
                }
                Ok(PlutusData {
                    plutus_data: plutus_data__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PlutusData", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PlutusDataArray {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.items.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PlutusDataArray", len)?;
        if !self.items.is_empty() {
            struct_ser.serialize_field("items", &self.items)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PlutusDataArray {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "items",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Items,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "items" => Ok(GeneratedField::Items),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PlutusDataArray;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PlutusDataArray")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PlutusDataArray, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut items__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Items => {
                            if items__.is_some() {
                                return Err(serde::de::Error::duplicate_field("items"));
                            }
                            items__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(PlutusDataArray {
                    items: items__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PlutusDataArray", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PlutusDataMap {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.pairs.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PlutusDataMap", len)?;
        if !self.pairs.is_empty() {
            struct_ser.serialize_field("pairs", &self.pairs)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PlutusDataMap {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "pairs",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Pairs,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "pairs" => Ok(GeneratedField::Pairs),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PlutusDataMap;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PlutusDataMap")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PlutusDataMap, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut pairs__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Pairs => {
                            if pairs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("pairs"));
                            }
                            pairs__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(PlutusDataMap {
                    pairs: pairs__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PlutusDataMap", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PlutusDataPair {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.key.is_some() {
            len += 1;
        }
        if self.value.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PlutusDataPair", len)?;
        if let Some(v) = self.key.as_ref() {
            struct_ser.serialize_field("key", v)?;
        }
        if let Some(v) = self.value.as_ref() {
            struct_ser.serialize_field("value", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PlutusDataPair {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "key",
            "value",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Key,
            Value,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "key" => Ok(GeneratedField::Key),
                            "value" => Ok(GeneratedField::Value),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PlutusDataPair;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PlutusDataPair")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PlutusDataPair, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut key__ = None;
                let mut value__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Key => {
                            if key__.is_some() {
                                return Err(serde::de::Error::duplicate_field("key"));
                            }
                            key__ = map.next_value()?;
                        }
                        GeneratedField::Value => {
                            if value__.is_some() {
                                return Err(serde::de::Error::duplicate_field("value"));
                            }
                            value__ = map.next_value()?;
                        }
                    }
                }
                Ok(PlutusDataPair {
                    key: key__,
                    value: value__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PlutusDataPair", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PoolMetadata {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PoolMetadata", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PoolMetadata {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PoolMetadata;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PoolMetadata")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PoolMetadata, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(PoolMetadata {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PoolMetadata", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PoolRegistrationCert {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.operator.is_empty() {
            len += 1;
        }
        if !self.vrf_keyhash.is_empty() {
            len += 1;
        }
        if self.pledge != 0 {
            len += 1;
        }
        if self.cost != 0 {
            len += 1;
        }
        if self.margin.is_some() {
            len += 1;
        }
        if !self.reward_account.is_empty() {
            len += 1;
        }
        if !self.pool_owners.is_empty() {
            len += 1;
        }
        if !self.relays.is_empty() {
            len += 1;
        }
        if self.pool_metadata.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PoolRegistrationCert", len)?;
        if !self.operator.is_empty() {
            struct_ser.serialize_field("operator", pbjson::private::base64::encode(&self.operator).as_str())?;
        }
        if !self.vrf_keyhash.is_empty() {
            struct_ser.serialize_field("vrfKeyhash", pbjson::private::base64::encode(&self.vrf_keyhash).as_str())?;
        }
        if self.pledge != 0 {
            struct_ser.serialize_field("pledge", ToString::to_string(&self.pledge).as_str())?;
        }
        if self.cost != 0 {
            struct_ser.serialize_field("cost", ToString::to_string(&self.cost).as_str())?;
        }
        if let Some(v) = self.margin.as_ref() {
            struct_ser.serialize_field("margin", v)?;
        }
        if !self.reward_account.is_empty() {
            struct_ser.serialize_field("rewardAccount", pbjson::private::base64::encode(&self.reward_account).as_str())?;
        }
        if !self.pool_owners.is_empty() {
            struct_ser.serialize_field("poolOwners", &self.pool_owners.iter().map(pbjson::private::base64::encode).collect::<Vec<_>>())?;
        }
        if !self.relays.is_empty() {
            struct_ser.serialize_field("relays", &self.relays)?;
        }
        if let Some(v) = self.pool_metadata.as_ref() {
            struct_ser.serialize_field("poolMetadata", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PoolRegistrationCert {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "operator",
            "vrf_keyhash",
            "vrfKeyhash",
            "pledge",
            "cost",
            "margin",
            "reward_account",
            "rewardAccount",
            "pool_owners",
            "poolOwners",
            "relays",
            "pool_metadata",
            "poolMetadata",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Operator,
            VrfKeyhash,
            Pledge,
            Cost,
            Margin,
            RewardAccount,
            PoolOwners,
            Relays,
            PoolMetadata,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "operator" => Ok(GeneratedField::Operator),
                            "vrfKeyhash" | "vrf_keyhash" => Ok(GeneratedField::VrfKeyhash),
                            "pledge" => Ok(GeneratedField::Pledge),
                            "cost" => Ok(GeneratedField::Cost),
                            "margin" => Ok(GeneratedField::Margin),
                            "rewardAccount" | "reward_account" => Ok(GeneratedField::RewardAccount),
                            "poolOwners" | "pool_owners" => Ok(GeneratedField::PoolOwners),
                            "relays" => Ok(GeneratedField::Relays),
                            "poolMetadata" | "pool_metadata" => Ok(GeneratedField::PoolMetadata),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PoolRegistrationCert;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PoolRegistrationCert")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PoolRegistrationCert, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut operator__ = None;
                let mut vrf_keyhash__ = None;
                let mut pledge__ = None;
                let mut cost__ = None;
                let mut margin__ = None;
                let mut reward_account__ = None;
                let mut pool_owners__ = None;
                let mut relays__ = None;
                let mut pool_metadata__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Operator => {
                            if operator__.is_some() {
                                return Err(serde::de::Error::duplicate_field("operator"));
                            }
                            operator__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::VrfKeyhash => {
                            if vrf_keyhash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("vrfKeyhash"));
                            }
                            vrf_keyhash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Pledge => {
                            if pledge__.is_some() {
                                return Err(serde::de::Error::duplicate_field("pledge"));
                            }
                            pledge__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Cost => {
                            if cost__.is_some() {
                                return Err(serde::de::Error::duplicate_field("cost"));
                            }
                            cost__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Margin => {
                            if margin__.is_some() {
                                return Err(serde::de::Error::duplicate_field("margin"));
                            }
                            margin__ = map.next_value()?;
                        }
                        GeneratedField::RewardAccount => {
                            if reward_account__.is_some() {
                                return Err(serde::de::Error::duplicate_field("rewardAccount"));
                            }
                            reward_account__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::PoolOwners => {
                            if pool_owners__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolOwners"));
                            }
                            pool_owners__ = 
                                Some(map.next_value::<Vec<::pbjson::private::BytesDeserialize<_>>>()?
                                    .into_iter().map(|x| x.0).collect())
                            ;
                        }
                        GeneratedField::Relays => {
                            if relays__.is_some() {
                                return Err(serde::de::Error::duplicate_field("relays"));
                            }
                            relays__ = Some(map.next_value()?);
                        }
                        GeneratedField::PoolMetadata => {
                            if pool_metadata__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolMetadata"));
                            }
                            pool_metadata__ = map.next_value()?;
                        }
                    }
                }
                Ok(PoolRegistrationCert {
                    operator: operator__.unwrap_or_default(),
                    vrf_keyhash: vrf_keyhash__.unwrap_or_default(),
                    pledge: pledge__.unwrap_or_default(),
                    cost: cost__.unwrap_or_default(),
                    margin: margin__,
                    reward_account: reward_account__.unwrap_or_default(),
                    pool_owners: pool_owners__.unwrap_or_default(),
                    relays: relays__.unwrap_or_default(),
                    pool_metadata: pool_metadata__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PoolRegistrationCert", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for PoolRetirementCert {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.pool_keyhash.is_empty() {
            len += 1;
        }
        if self.epoch != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.PoolRetirementCert", len)?;
        if !self.pool_keyhash.is_empty() {
            struct_ser.serialize_field("poolKeyhash", pbjson::private::base64::encode(&self.pool_keyhash).as_str())?;
        }
        if self.epoch != 0 {
            struct_ser.serialize_field("epoch", ToString::to_string(&self.epoch).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for PoolRetirementCert {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "pool_keyhash",
            "poolKeyhash",
            "epoch",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            PoolKeyhash,
            Epoch,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "poolKeyhash" | "pool_keyhash" => Ok(GeneratedField::PoolKeyhash),
                            "epoch" => Ok(GeneratedField::Epoch),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = PoolRetirementCert;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.PoolRetirementCert")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<PoolRetirementCert, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut pool_keyhash__ = None;
                let mut epoch__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::PoolKeyhash => {
                            if pool_keyhash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolKeyhash"));
                            }
                            pool_keyhash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Epoch => {
                            if epoch__.is_some() {
                                return Err(serde::de::Error::duplicate_field("epoch"));
                            }
                            epoch__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(PoolRetirementCert {
                    pool_keyhash: pool_keyhash__.unwrap_or_default(),
                    epoch: epoch__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.PoolRetirementCert", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Purpose {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        let variant = match self {
            Self::NoPurpose => "NO_PURPOSE",
            Self::Spend => "SPEND",
            Self::Mint => "MINT",
            Self::Cert => "CERT",
            Self::Reward => "REWARD",
        };
        serializer.serialize_str(variant)
    }
}
impl<'de> serde::Deserialize<'de> for Purpose {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "NO_PURPOSE",
            "SPEND",
            "MINT",
            "CERT",
            "REWARD",
        ];

        struct GeneratedVisitor;

        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Purpose;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                write!(formatter, "expected one of: {:?}", &FIELDS)
            }

            fn visit_i64<E>(self, v: i64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                use std::convert::TryFrom;
                i32::try_from(v)
                    .ok()
                    .and_then(Purpose::from_i32)
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Signed(v), &self)
                    })
            }

            fn visit_u64<E>(self, v: u64) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                use std::convert::TryFrom;
                i32::try_from(v)
                    .ok()
                    .and_then(Purpose::from_i32)
                    .ok_or_else(|| {
                        serde::de::Error::invalid_value(serde::de::Unexpected::Unsigned(v), &self)
                    })
            }

            fn visit_str<E>(self, value: &str) -> std::result::Result<Self::Value, E>
            where
                E: serde::de::Error,
            {
                match value {
                    "NO_PURPOSE" => Ok(Purpose::NoPurpose),
                    "SPEND" => Ok(Purpose::Spend),
                    "MINT" => Ok(Purpose::Mint),
                    "CERT" => Ok(Purpose::Cert),
                    "REWARD" => Ok(Purpose::Reward),
                    _ => Err(serde::de::Error::unknown_variant(value, FIELDS)),
                }
            }
        }
        deserializer.deserialize_any(GeneratedVisitor)
    }
}
impl serde::Serialize for Redeemer {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.purpose != 0 {
            len += 1;
        }
        if self.datum.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Redeemer", len)?;
        if self.purpose != 0 {
            let v = Purpose::from_i32(self.purpose)
                .ok_or_else(|| serde::ser::Error::custom(format!("Invalid variant {}", self.purpose)))?;
            struct_ser.serialize_field("purpose", &v)?;
        }
        if let Some(v) = self.datum.as_ref() {
            struct_ser.serialize_field("datum", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Redeemer {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "purpose",
            "datum",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Purpose,
            Datum,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "purpose" => Ok(GeneratedField::Purpose),
                            "datum" => Ok(GeneratedField::Datum),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Redeemer;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Redeemer")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Redeemer, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut purpose__ = None;
                let mut datum__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Purpose => {
                            if purpose__.is_some() {
                                return Err(serde::de::Error::duplicate_field("purpose"));
                            }
                            purpose__ = Some(map.next_value::<Purpose>()? as i32);
                        }
                        GeneratedField::Datum => {
                            if datum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("datum"));
                            }
                            datum__ = map.next_value()?;
                        }
                    }
                }
                Ok(Redeemer {
                    purpose: purpose__.unwrap_or_default(),
                    datum: datum__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Redeemer", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Relay {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Relay", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Relay {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Relay;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Relay")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Relay, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(Relay {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Relay", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Script {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.script.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Script", len)?;
        if let Some(v) = self.script.as_ref() {
            match v {
                script::Script::Native(v) => {
                    struct_ser.serialize_field("Native", v)?;
                }
                script::Script::PlutusV1(v) => {
                    struct_ser.serialize_field("PlutusV1", pbjson::private::base64::encode(&v).as_str())?;
                }
                script::Script::PlutusV2(v) => {
                    struct_ser.serialize_field("PlutusV2", pbjson::private::base64::encode(&v).as_str())?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Script {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "Native",
            "PlutusV1",
            "PlutusV2",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Native,
            PlutusV1,
            PlutusV2,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "Native" => Ok(GeneratedField::Native),
                            "PlutusV1" => Ok(GeneratedField::PlutusV1),
                            "PlutusV2" => Ok(GeneratedField::PlutusV2),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Script;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Script")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Script, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut script__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Native => {
                            if script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("Native"));
                            }
                            script__ = map.next_value::<::std::option::Option<_>>()?.map(script::Script::Native)
;
                        }
                        GeneratedField::PlutusV1 => {
                            if script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("PlutusV1"));
                            }
                            script__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| script::Script::PlutusV1(x.0));
                        }
                        GeneratedField::PlutusV2 => {
                            if script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("PlutusV2"));
                            }
                            script__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| script::Script::PlutusV2(x.0));
                        }
                    }
                }
                Ok(Script {
                    script: script__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Script", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for ScriptNOfK {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.k != 0 {
            len += 1;
        }
        if !self.scripts.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.ScriptNOfK", len)?;
        if self.k != 0 {
            struct_ser.serialize_field("k", &self.k)?;
        }
        if !self.scripts.is_empty() {
            struct_ser.serialize_field("scripts", &self.scripts)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for ScriptNOfK {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "k",
            "scripts",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            K,
            Scripts,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "k" => Ok(GeneratedField::K),
                            "scripts" => Ok(GeneratedField::Scripts),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = ScriptNOfK;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.ScriptNOfK")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<ScriptNOfK, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut k__ = None;
                let mut scripts__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::K => {
                            if k__.is_some() {
                                return Err(serde::de::Error::duplicate_field("k"));
                            }
                            k__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Scripts => {
                            if scripts__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scripts"));
                            }
                            scripts__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(ScriptNOfK {
                    k: k__.unwrap_or_default(),
                    scripts: scripts__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.ScriptNOfK", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StakeCredential {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.stake_credential.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.StakeCredential", len)?;
        if let Some(v) = self.stake_credential.as_ref() {
            match v {
                stake_credential::StakeCredential::AddrKeyHash(v) => {
                    struct_ser.serialize_field("addrKeyHash", pbjson::private::base64::encode(&v).as_str())?;
                }
                stake_credential::StakeCredential::ScriptHash(v) => {
                    struct_ser.serialize_field("scriptHash", pbjson::private::base64::encode(&v).as_str())?;
                }
            }
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StakeCredential {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "addr_key_hash",
            "addrKeyHash",
            "script_hash",
            "scriptHash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            AddrKeyHash,
            ScriptHash,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "addrKeyHash" | "addr_key_hash" => Ok(GeneratedField::AddrKeyHash),
                            "scriptHash" | "script_hash" => Ok(GeneratedField::ScriptHash),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StakeCredential;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.StakeCredential")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<StakeCredential, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut stake_credential__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::AddrKeyHash => {
                            if stake_credential__.is_some() {
                                return Err(serde::de::Error::duplicate_field("addrKeyHash"));
                            }
                            stake_credential__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| stake_credential::StakeCredential::AddrKeyHash(x.0));
                        }
                        GeneratedField::ScriptHash => {
                            if stake_credential__.is_some() {
                                return Err(serde::de::Error::duplicate_field("scriptHash"));
                            }
                            stake_credential__ = map.next_value::<::std::option::Option<::pbjson::private::BytesDeserialize<_>>>()?.map(|x| stake_credential::StakeCredential::ScriptHash(x.0));
                        }
                    }
                }
                Ok(StakeCredential {
                    stake_credential: stake_credential__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.StakeCredential", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for StakeDelegationCert {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.stake_credential.is_some() {
            len += 1;
        }
        if !self.pool_keyhash.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.StakeDelegationCert", len)?;
        if let Some(v) = self.stake_credential.as_ref() {
            struct_ser.serialize_field("stakeCredential", v)?;
        }
        if !self.pool_keyhash.is_empty() {
            struct_ser.serialize_field("poolKeyhash", pbjson::private::base64::encode(&self.pool_keyhash).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for StakeDelegationCert {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "stake_credential",
            "stakeCredential",
            "pool_keyhash",
            "poolKeyhash",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            StakeCredential,
            PoolKeyhash,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "stakeCredential" | "stake_credential" => Ok(GeneratedField::StakeCredential),
                            "poolKeyhash" | "pool_keyhash" => Ok(GeneratedField::PoolKeyhash),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = StakeDelegationCert;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.StakeDelegationCert")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<StakeDelegationCert, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut stake_credential__ = None;
                let mut pool_keyhash__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::StakeCredential => {
                            if stake_credential__.is_some() {
                                return Err(serde::de::Error::duplicate_field("stakeCredential"));
                            }
                            stake_credential__ = map.next_value()?;
                        }
                        GeneratedField::PoolKeyhash => {
                            if pool_keyhash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("poolKeyhash"));
                            }
                            pool_keyhash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(StakeDelegationCert {
                    stake_credential: stake_credential__,
                    pool_keyhash: pool_keyhash__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.StakeDelegationCert", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Tx {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.inputs.is_empty() {
            len += 1;
        }
        if !self.outputs.is_empty() {
            len += 1;
        }
        if !self.certificates.is_empty() {
            len += 1;
        }
        if !self.withdrawals.is_empty() {
            len += 1;
        }
        if !self.mint.is_empty() {
            len += 1;
        }
        if !self.reference_inputs.is_empty() {
            len += 1;
        }
        if self.witnesses.is_some() {
            len += 1;
        }
        if self.collateral.is_some() {
            len += 1;
        }
        if self.fee != 0 {
            len += 1;
        }
        if self.validity.is_some() {
            len += 1;
        }
        if self.successful {
            len += 1;
        }
        if self.auxiliary.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Tx", len)?;
        if !self.inputs.is_empty() {
            struct_ser.serialize_field("inputs", &self.inputs)?;
        }
        if !self.outputs.is_empty() {
            struct_ser.serialize_field("outputs", &self.outputs)?;
        }
        if !self.certificates.is_empty() {
            struct_ser.serialize_field("certificates", &self.certificates)?;
        }
        if !self.withdrawals.is_empty() {
            struct_ser.serialize_field("withdrawals", &self.withdrawals)?;
        }
        if !self.mint.is_empty() {
            struct_ser.serialize_field("mint", &self.mint)?;
        }
        if !self.reference_inputs.is_empty() {
            struct_ser.serialize_field("referenceInputs", &self.reference_inputs)?;
        }
        if let Some(v) = self.witnesses.as_ref() {
            struct_ser.serialize_field("witnesses", v)?;
        }
        if let Some(v) = self.collateral.as_ref() {
            struct_ser.serialize_field("collateral", v)?;
        }
        if self.fee != 0 {
            struct_ser.serialize_field("fee", ToString::to_string(&self.fee).as_str())?;
        }
        if let Some(v) = self.validity.as_ref() {
            struct_ser.serialize_field("validity", v)?;
        }
        if self.successful {
            struct_ser.serialize_field("successful", &self.successful)?;
        }
        if let Some(v) = self.auxiliary.as_ref() {
            struct_ser.serialize_field("auxiliary", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Tx {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "inputs",
            "outputs",
            "certificates",
            "withdrawals",
            "mint",
            "reference_inputs",
            "referenceInputs",
            "witnesses",
            "collateral",
            "fee",
            "validity",
            "successful",
            "auxiliary",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Inputs,
            Outputs,
            Certificates,
            Withdrawals,
            Mint,
            ReferenceInputs,
            Witnesses,
            Collateral,
            Fee,
            Validity,
            Successful,
            Auxiliary,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "inputs" => Ok(GeneratedField::Inputs),
                            "outputs" => Ok(GeneratedField::Outputs),
                            "certificates" => Ok(GeneratedField::Certificates),
                            "withdrawals" => Ok(GeneratedField::Withdrawals),
                            "mint" => Ok(GeneratedField::Mint),
                            "referenceInputs" | "reference_inputs" => Ok(GeneratedField::ReferenceInputs),
                            "witnesses" => Ok(GeneratedField::Witnesses),
                            "collateral" => Ok(GeneratedField::Collateral),
                            "fee" => Ok(GeneratedField::Fee),
                            "validity" => Ok(GeneratedField::Validity),
                            "successful" => Ok(GeneratedField::Successful),
                            "auxiliary" => Ok(GeneratedField::Auxiliary),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Tx;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Tx")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Tx, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut inputs__ = None;
                let mut outputs__ = None;
                let mut certificates__ = None;
                let mut withdrawals__ = None;
                let mut mint__ = None;
                let mut reference_inputs__ = None;
                let mut witnesses__ = None;
                let mut collateral__ = None;
                let mut fee__ = None;
                let mut validity__ = None;
                let mut successful__ = None;
                let mut auxiliary__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Inputs => {
                            if inputs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("inputs"));
                            }
                            inputs__ = Some(map.next_value()?);
                        }
                        GeneratedField::Outputs => {
                            if outputs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("outputs"));
                            }
                            outputs__ = Some(map.next_value()?);
                        }
                        GeneratedField::Certificates => {
                            if certificates__.is_some() {
                                return Err(serde::de::Error::duplicate_field("certificates"));
                            }
                            certificates__ = Some(map.next_value()?);
                        }
                        GeneratedField::Withdrawals => {
                            if withdrawals__.is_some() {
                                return Err(serde::de::Error::duplicate_field("withdrawals"));
                            }
                            withdrawals__ = Some(map.next_value()?);
                        }
                        GeneratedField::Mint => {
                            if mint__.is_some() {
                                return Err(serde::de::Error::duplicate_field("mint"));
                            }
                            mint__ = Some(map.next_value()?);
                        }
                        GeneratedField::ReferenceInputs => {
                            if reference_inputs__.is_some() {
                                return Err(serde::de::Error::duplicate_field("referenceInputs"));
                            }
                            reference_inputs__ = Some(map.next_value()?);
                        }
                        GeneratedField::Witnesses => {
                            if witnesses__.is_some() {
                                return Err(serde::de::Error::duplicate_field("witnesses"));
                            }
                            witnesses__ = map.next_value()?;
                        }
                        GeneratedField::Collateral => {
                            if collateral__.is_some() {
                                return Err(serde::de::Error::duplicate_field("collateral"));
                            }
                            collateral__ = map.next_value()?;
                        }
                        GeneratedField::Fee => {
                            if fee__.is_some() {
                                return Err(serde::de::Error::duplicate_field("fee"));
                            }
                            fee__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Validity => {
                            if validity__.is_some() {
                                return Err(serde::de::Error::duplicate_field("validity"));
                            }
                            validity__ = map.next_value()?;
                        }
                        GeneratedField::Successful => {
                            if successful__.is_some() {
                                return Err(serde::de::Error::duplicate_field("successful"));
                            }
                            successful__ = Some(map.next_value()?);
                        }
                        GeneratedField::Auxiliary => {
                            if auxiliary__.is_some() {
                                return Err(serde::de::Error::duplicate_field("auxiliary"));
                            }
                            auxiliary__ = map.next_value()?;
                        }
                    }
                }
                Ok(Tx {
                    inputs: inputs__.unwrap_or_default(),
                    outputs: outputs__.unwrap_or_default(),
                    certificates: certificates__.unwrap_or_default(),
                    withdrawals: withdrawals__.unwrap_or_default(),
                    mint: mint__.unwrap_or_default(),
                    reference_inputs: reference_inputs__.unwrap_or_default(),
                    witnesses: witnesses__,
                    collateral: collateral__,
                    fee: fee__.unwrap_or_default(),
                    validity: validity__,
                    successful: successful__.unwrap_or_default(),
                    auxiliary: auxiliary__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Tx", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxInput {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.tx_hash.is_empty() {
            len += 1;
        }
        if self.output_index != 0 {
            len += 1;
        }
        if self.as_output.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.TxInput", len)?;
        if !self.tx_hash.is_empty() {
            struct_ser.serialize_field("txHash", pbjson::private::base64::encode(&self.tx_hash).as_str())?;
        }
        if self.output_index != 0 {
            struct_ser.serialize_field("outputIndex", &self.output_index)?;
        }
        if let Some(v) = self.as_output.as_ref() {
            struct_ser.serialize_field("asOutput", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxInput {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "tx_hash",
            "txHash",
            "output_index",
            "outputIndex",
            "as_output",
            "asOutput",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            TxHash,
            OutputIndex,
            AsOutput,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "txHash" | "tx_hash" => Ok(GeneratedField::TxHash),
                            "outputIndex" | "output_index" => Ok(GeneratedField::OutputIndex),
                            "asOutput" | "as_output" => Ok(GeneratedField::AsOutput),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxInput;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.TxInput")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxInput, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut tx_hash__ = None;
                let mut output_index__ = None;
                let mut as_output__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::TxHash => {
                            if tx_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("txHash"));
                            }
                            tx_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::OutputIndex => {
                            if output_index__.is_some() {
                                return Err(serde::de::Error::duplicate_field("outputIndex"));
                            }
                            output_index__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::AsOutput => {
                            if as_output__.is_some() {
                                return Err(serde::de::Error::duplicate_field("asOutput"));
                            }
                            as_output__ = map.next_value()?;
                        }
                    }
                }
                Ok(TxInput {
                    tx_hash: tx_hash__.unwrap_or_default(),
                    output_index: output_index__.unwrap_or_default(),
                    as_output: as_output__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.TxInput", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxOutput {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.address.is_empty() {
            len += 1;
        }
        if self.coin != 0 {
            len += 1;
        }
        if !self.assets.is_empty() {
            len += 1;
        }
        if self.datum.is_some() {
            len += 1;
        }
        if !self.datum_hash.is_empty() {
            len += 1;
        }
        if self.script.is_some() {
            len += 1;
        }
        if self.redeemer.is_some() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.TxOutput", len)?;
        if !self.address.is_empty() {
            struct_ser.serialize_field("address", pbjson::private::base64::encode(&self.address).as_str())?;
        }
        if self.coin != 0 {
            struct_ser.serialize_field("coin", ToString::to_string(&self.coin).as_str())?;
        }
        if !self.assets.is_empty() {
            struct_ser.serialize_field("assets", &self.assets)?;
        }
        if let Some(v) = self.datum.as_ref() {
            struct_ser.serialize_field("datum", v)?;
        }
        if !self.datum_hash.is_empty() {
            struct_ser.serialize_field("datumHash", pbjson::private::base64::encode(&self.datum_hash).as_str())?;
        }
        if let Some(v) = self.script.as_ref() {
            struct_ser.serialize_field("script", v)?;
        }
        if let Some(v) = self.redeemer.as_ref() {
            struct_ser.serialize_field("redeemer", v)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxOutput {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "address",
            "coin",
            "assets",
            "datum",
            "datum_hash",
            "datumHash",
            "script",
            "redeemer",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Address,
            Coin,
            Assets,
            Datum,
            DatumHash,
            Script,
            Redeemer,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "address" => Ok(GeneratedField::Address),
                            "coin" => Ok(GeneratedField::Coin),
                            "assets" => Ok(GeneratedField::Assets),
                            "datum" => Ok(GeneratedField::Datum),
                            "datumHash" | "datum_hash" => Ok(GeneratedField::DatumHash),
                            "script" => Ok(GeneratedField::Script),
                            "redeemer" => Ok(GeneratedField::Redeemer),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxOutput;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.TxOutput")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxOutput, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut address__ = None;
                let mut coin__ = None;
                let mut assets__ = None;
                let mut datum__ = None;
                let mut datum_hash__ = None;
                let mut script__ = None;
                let mut redeemer__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Address => {
                            if address__.is_some() {
                                return Err(serde::de::Error::duplicate_field("address"));
                            }
                            address__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Coin => {
                            if coin__.is_some() {
                                return Err(serde::de::Error::duplicate_field("coin"));
                            }
                            coin__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Assets => {
                            if assets__.is_some() {
                                return Err(serde::de::Error::duplicate_field("assets"));
                            }
                            assets__ = Some(map.next_value()?);
                        }
                        GeneratedField::Datum => {
                            if datum__.is_some() {
                                return Err(serde::de::Error::duplicate_field("datum"));
                            }
                            datum__ = map.next_value()?;
                        }
                        GeneratedField::DatumHash => {
                            if datum_hash__.is_some() {
                                return Err(serde::de::Error::duplicate_field("datumHash"));
                            }
                            datum_hash__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Script => {
                            if script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("script"));
                            }
                            script__ = map.next_value()?;
                        }
                        GeneratedField::Redeemer => {
                            if redeemer__.is_some() {
                                return Err(serde::de::Error::duplicate_field("redeemer"));
                            }
                            redeemer__ = map.next_value()?;
                        }
                    }
                }
                Ok(TxOutput {
                    address: address__.unwrap_or_default(),
                    coin: coin__.unwrap_or_default(),
                    assets: assets__.unwrap_or_default(),
                    datum: datum__,
                    datum_hash: datum_hash__.unwrap_or_default(),
                    script: script__,
                    redeemer: redeemer__,
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.TxOutput", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for TxValidity {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if self.start != 0 {
            len += 1;
        }
        if self.ttl != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.TxValidity", len)?;
        if self.start != 0 {
            struct_ser.serialize_field("start", ToString::to_string(&self.start).as_str())?;
        }
        if self.ttl != 0 {
            struct_ser.serialize_field("ttl", ToString::to_string(&self.ttl).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for TxValidity {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "start",
            "ttl",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Start,
            Ttl,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "start" => Ok(GeneratedField::Start),
                            "ttl" => Ok(GeneratedField::Ttl),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = TxValidity;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.TxValidity")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<TxValidity, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut start__ = None;
                let mut ttl__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Start => {
                            if start__.is_some() {
                                return Err(serde::de::Error::duplicate_field("start"));
                            }
                            start__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Ttl => {
                            if ttl__.is_some() {
                                return Err(serde::de::Error::duplicate_field("ttl"));
                            }
                            ttl__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(TxValidity {
                    start: start__.unwrap_or_default(),
                    ttl: ttl__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.TxValidity", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for UnitInterval {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let len = 0;
        let struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.UnitInterval", len)?;
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for UnitInterval {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                            Err(serde::de::Error::unknown_field(value, FIELDS))
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = UnitInterval;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.UnitInterval")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<UnitInterval, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                while map.next_key::<GeneratedField>()?.is_some() {
                    let _ = map.next_value::<serde::de::IgnoredAny>()?;
                }
                Ok(UnitInterval {
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.UnitInterval", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for VKeyWitness {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.vkey.is_empty() {
            len += 1;
        }
        if !self.signature.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.VKeyWitness", len)?;
        if !self.vkey.is_empty() {
            struct_ser.serialize_field("vkey", pbjson::private::base64::encode(&self.vkey).as_str())?;
        }
        if !self.signature.is_empty() {
            struct_ser.serialize_field("signature", pbjson::private::base64::encode(&self.signature).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for VKeyWitness {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "vkey",
            "signature",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Vkey,
            Signature,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "vkey" => Ok(GeneratedField::Vkey),
                            "signature" => Ok(GeneratedField::Signature),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = VKeyWitness;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.VKeyWitness")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<VKeyWitness, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut vkey__ = None;
                let mut signature__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Vkey => {
                            if vkey__.is_some() {
                                return Err(serde::de::Error::duplicate_field("vkey"));
                            }
                            vkey__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Signature => {
                            if signature__.is_some() {
                                return Err(serde::de::Error::duplicate_field("signature"));
                            }
                            signature__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(VKeyWitness {
                    vkey: vkey__.unwrap_or_default(),
                    signature: signature__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.VKeyWitness", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for Withdrawal {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.reward_account.is_empty() {
            len += 1;
        }
        if self.coin != 0 {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.Withdrawal", len)?;
        if !self.reward_account.is_empty() {
            struct_ser.serialize_field("rewardAccount", pbjson::private::base64::encode(&self.reward_account).as_str())?;
        }
        if self.coin != 0 {
            struct_ser.serialize_field("coin", ToString::to_string(&self.coin).as_str())?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for Withdrawal {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "reward_account",
            "rewardAccount",
            "coin",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            RewardAccount,
            Coin,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "rewardAccount" | "reward_account" => Ok(GeneratedField::RewardAccount),
                            "coin" => Ok(GeneratedField::Coin),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = Withdrawal;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.Withdrawal")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<Withdrawal, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut reward_account__ = None;
                let mut coin__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::RewardAccount => {
                            if reward_account__.is_some() {
                                return Err(serde::de::Error::duplicate_field("rewardAccount"));
                            }
                            reward_account__ = 
                                Some(map.next_value::<::pbjson::private::BytesDeserialize<_>>()?.0)
                            ;
                        }
                        GeneratedField::Coin => {
                            if coin__.is_some() {
                                return Err(serde::de::Error::duplicate_field("coin"));
                            }
                            coin__ = 
                                Some(map.next_value::<::pbjson::private::NumberDeserialize<_>>()?.0)
                            ;
                        }
                    }
                }
                Ok(Withdrawal {
                    reward_account: reward_account__.unwrap_or_default(),
                    coin: coin__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.Withdrawal", FIELDS, GeneratedVisitor)
    }
}
impl serde::Serialize for WitnessSet {
    #[allow(deprecated)]
    fn serialize<S>(&self, serializer: S) -> std::result::Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        use serde::ser::SerializeStruct;
        let mut len = 0;
        if !self.vkeywitness.is_empty() {
            len += 1;
        }
        if !self.script.is_empty() {
            len += 1;
        }
        if !self.plutus_datums.is_empty() {
            len += 1;
        }
        let mut struct_ser = serializer.serialize_struct("utxorpc.ledger.v1.WitnessSet", len)?;
        if !self.vkeywitness.is_empty() {
            struct_ser.serialize_field("vkeywitness", &self.vkeywitness)?;
        }
        if !self.script.is_empty() {
            struct_ser.serialize_field("script", &self.script)?;
        }
        if !self.plutus_datums.is_empty() {
            struct_ser.serialize_field("plutusDatums", &self.plutus_datums)?;
        }
        struct_ser.end()
    }
}
impl<'de> serde::Deserialize<'de> for WitnessSet {
    #[allow(deprecated)]
    fn deserialize<D>(deserializer: D) -> std::result::Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        const FIELDS: &[&str] = &[
            "vkeywitness",
            "script",
            "plutus_datums",
            "plutusDatums",
        ];

        #[allow(clippy::enum_variant_names)]
        enum GeneratedField {
            Vkeywitness,
            Script,
            PlutusDatums,
        }
        impl<'de> serde::Deserialize<'de> for GeneratedField {
            fn deserialize<D>(deserializer: D) -> std::result::Result<GeneratedField, D::Error>
            where
                D: serde::Deserializer<'de>,
            {
                struct GeneratedVisitor;

                impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
                    type Value = GeneratedField;

                    fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                        write!(formatter, "expected one of: {:?}", &FIELDS)
                    }

                    #[allow(unused_variables)]
                    fn visit_str<E>(self, value: &str) -> std::result::Result<GeneratedField, E>
                    where
                        E: serde::de::Error,
                    {
                        match value {
                            "vkeywitness" => Ok(GeneratedField::Vkeywitness),
                            "script" => Ok(GeneratedField::Script),
                            "plutusDatums" | "plutus_datums" => Ok(GeneratedField::PlutusDatums),
                            _ => Err(serde::de::Error::unknown_field(value, FIELDS)),
                        }
                    }
                }
                deserializer.deserialize_identifier(GeneratedVisitor)
            }
        }
        struct GeneratedVisitor;
        impl<'de> serde::de::Visitor<'de> for GeneratedVisitor {
            type Value = WitnessSet;

            fn expecting(&self, formatter: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
                formatter.write_str("struct utxorpc.ledger.v1.WitnessSet")
            }

            fn visit_map<V>(self, mut map: V) -> std::result::Result<WitnessSet, V::Error>
                where
                    V: serde::de::MapAccess<'de>,
            {
                let mut vkeywitness__ = None;
                let mut script__ = None;
                let mut plutus_datums__ = None;
                while let Some(k) = map.next_key()? {
                    match k {
                        GeneratedField::Vkeywitness => {
                            if vkeywitness__.is_some() {
                                return Err(serde::de::Error::duplicate_field("vkeywitness"));
                            }
                            vkeywitness__ = Some(map.next_value()?);
                        }
                        GeneratedField::Script => {
                            if script__.is_some() {
                                return Err(serde::de::Error::duplicate_field("script"));
                            }
                            script__ = Some(map.next_value()?);
                        }
                        GeneratedField::PlutusDatums => {
                            if plutus_datums__.is_some() {
                                return Err(serde::de::Error::duplicate_field("plutusDatums"));
                            }
                            plutus_datums__ = Some(map.next_value()?);
                        }
                    }
                }
                Ok(WitnessSet {
                    vkeywitness: vkeywitness__.unwrap_or_default(),
                    script: script__.unwrap_or_default(),
                    plutus_datums: plutus_datums__.unwrap_or_default(),
                })
            }
        }
        deserializer.deserialize_struct("utxorpc.ledger.v1.WitnessSet", FIELDS, GeneratedVisitor)
    }
}
